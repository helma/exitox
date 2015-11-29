require_relative 'parse-groups.rb'

comparison = {}
@results.keys.each_with_index do |group,i|
  @results.keys[i+1,@results.keys.size-1].each do |g2|
    comp = "#{group} - #{g2}"
    comparison[comp] = {}
    comparison[comp][:common] = {}
    [true,false].each do |k|
      comparison[comp][:common][k] = (@results[group][k] & @results[g2][k]).sort
    end
    comparison[comp][:different] = ((@results[group][true] & @results[g2][false])+(@results[group][false] & @results[g2][true])).sort
  end
end

puts comparison.to_yaml
