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
compounds = []
@exitox.each { |g,comps| comps.each{|c| compounds << c }}
compounds.each_with_index do |c,i|
    compounds[i+1,compounds.size-i].each do |c2|
      comp = "#{c[0]} - #{c2[0]}"
      comparison = {:name => comp}
      comparison["Common"] = {}
      [true,false].each do |k|
        comparison["Common"][k] = aids2metadata(c[1][k] & c2[1][k])
      end
      comparison["Different"] = aids2metadata((c[1][true] & c2[1][false])+(c[1][false] & c2[1][true]))
      nr_common = comparison["Common"][true].size #+ comparison["Common"][false].size
      nr_different = comparison["Different"].size
      similarity = nr_common.to_f/(nr_common+nr_different)
      puts "#{comp}: #{similarity}"
      `mkdir -p '#{File.join("html","9x9matrix")}'`

      File.open(File.join("html","9x9matrix","#{comp} Assays.html"),"w+"){|f| f.puts assay_layout.render(Object.new, :comparison => comparison)}
      File.open(File.join("html","9x9matrix","#{comp} Targets.html").gsub(/\s+/,'_'),"w+"){|f| f.puts target_layout.render(Object.new, :comparison => comparison)}
    end
  #end
end
=begin
=end

#puts results.to_yaml
