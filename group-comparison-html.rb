require 'slim'
require_relative 'parse-groups.rb'

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

assay_layout = Slim::Template.new('group-comparison-assays.slim')
target_layout = Slim::Template.new('group-comparison-targets.slim')
`mkdir -p '#{File.join("html","Groups").gsub(/\s+/,'_')}'`
@results.keys.each_with_index do |group,i|
  @results.keys[i+1,@results.keys.size-1].each do |g2|
    comp = "#{group} - #{g2}"
    comparison = {:name => comp}
    common = "Common"
    different = "Different"
    comparison[common] = {}
    [true,false].each do |k|
      k ? a = "active" : a = "inactive"
      comparison[common][a] = aids2metadata(@results[group][k] & @results[g2][k])
    end
    comparison[different] = aids2metadata((@results[group][true] & @results[g2][false])+(@results[group][false] & @results[g2][true]))
    File.open(File.join("html","Groups","#{comp} Assays.html").gsub(/\s+/,'_'),"w+"){|f| f.puts assay_layout.render(Object.new, :comparison => comparison)}
    File.open(File.join("html","Groups","#{comp} Targets.html").gsub(/\s+/,'_'),"w+"){|f| f.puts target_layout.render(Object.new, :comparison => comparison)}
  end
end

