require_relative 'parse-groups.rb'

@aid2name = YAML.load_file("aid2name.yaml")

comparison = {}
@results.keys.each_with_index do |group,i|
  @results.keys[i+1,@results.keys.size-1].each do |g2|
    comp = "#{group} - #{g2}"
    comparison[comp] = {}
    comparison[comp][:common] = {}
    [true,false].each do |k|
      comparison[comp][:common][k] = (@results[group][k] & @results[g2][k]).sort.collect{|aid| "#{@aid2name[aid]} (AID #{aid})"}
    end
    comparison[comp][:different] = ((@results[group][true] & @results[g2][false])+(@results[group][false] & @results[g2][true])).sort.collect{|aid| "#{@aid2name[aid]} (AID #{aid})"}
  end
end

puts comparison.to_yaml
