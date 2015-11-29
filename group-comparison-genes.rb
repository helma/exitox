require_relative 'parse-groups.rb'

@aid2metadata = YAML.load_file("aid2metadata.yaml")

def genes aid
  @aid2metadata[aid]["Target"] ? @aid2metadata[aid]["Target"].collect{|t| {t["GI"] => t["Name"]}} : nil
end

def aids2genes aids
  aids.uniq.collect{|aid| genes(aid)}.flatten.compact.uniq.sort{|a,b| a.keys.first <=> b.keys.first}
end

comparison = {}
@results.keys.each_with_index do |group,i|
  @results.keys[i+1,@results.keys.size-1].each do |g2|
    comp = "#{group} - #{g2}"
    comparison[comp] = {}
    comparison[comp][:common] = {}
    [true,false].each do |k|
      comparison[comp][:common][k] = aids2genes(@results[group][k] & @results[g2][k])
    end
    comparison[comp][:different] = aids2genes((@results[group][true] & @results[g2][false])+(@results[group][false] & @results[g2][true]))
  end
end

puts comparison.to_yaml
