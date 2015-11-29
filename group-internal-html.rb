require 'slim'
require_relative 'parser.rb'

@aid2metadata = YAML.load_file("aid2metadata.yaml")

def assay_metadata aid
  result = {:uri => "http://pubchem.ncbi.nlm.nih.gov/bioassay/#{aid}",:name => @aid2metadata[aid]["Name"]}
  if @aid2metadata[aid]["Target"] 
    result[:targets] = []
    @aid2metadata[aid]["Target"].each do |t|
      species = t["Name"].match(/\[.*\]/).to_s.tr('[]','')
      species = "not defined" if species.empty?
      result[:targets] << {:target_name => t["Name"], :target_uri => "https://pubchem.ncbi.nlm.nih.gov/targets/?id=#{t['GI']}", :species => species}
    end
  end
  result
end

def aids2metadata aids
  aids.uniq.collect{|aid| assay_metadata(aid)}.flatten.compact.uniq.sort{|a,b| a.keys.first <=> b.keys.first}
end

results = {}
assay_layout = Slim::Template.new('group-internal-assays.slim')
target_layout = Slim::Template.new('group-internal-targets.slim')
@exitox.each do |group,compounds|
  cnames = compounds.keys
  cnames.each_with_index do |c,i|
    cnames[i+1,cnames.size-i].each do |c2|
      comp = "#{c} - #{c2}"
      comparison = {:name => comp}
      comparison["Common"] = {}
      [true,false].each do |k|
        comparison["Common"][k] = aids2metadata(@exitox[group][c][k] & @exitox[group][c2][k])
      end
      comparison["Different"] = aids2metadata((@exitox[group][c][true] & @exitox[group][c2][false])+(@exitox[group][c][false] & @exitox[group][c2][true]))
        
      `mkdir -p '#{File.join("html",group).gsub(/\s+/,'_')}'`

      File.open(File.join("html",group,"#{comp} Assays.html").gsub(/\s+/,'_'),"w+"){|f| f.puts assay_layout.render(Object.new, :comparison => comparison)}
      File.open(File.join("html",group,"#{comp} Targets.html").gsub(/\s+/,'_'),"w+"){|f| f.puts target_layout.render(Object.new, :comparison => comparison)}
    end
  end
end

#puts results.to_yaml
