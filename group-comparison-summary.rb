require_relative 'parser.rb'

results = {}
@exitox.each do |group,compounds|
  results[group] = { true => nil, false => nil }
  compounds.each do |c,klass|
    klass.each do |k,aids|
      !results[group][k].nil? ? results[group][k] += aids : results[group][k] = aids
    end
  end
end
#puts results.to_yaml
comparison = {}
results.keys.each_with_index do |group,i|
  results.keys[i+1,results.keys.size-1].each do |g2|
    comp = "#{group} - #{g2}"
    comparison[comp] = {}
    comparison[comp][:common] = {}
    [true,false].each do |k|
      comparison[comp][:common][k] = (results[group][k] & results[g2][k]).size
    end
    comparison[comp][:different] = ((results[group][true] & results[g2][false])+(results[group][false] & results[g2][true])).size
    common = (comparison[comp][:common][true]+comparison[comp][:common][false])
    comparison[comp][:similarity] = common.to_f/(common+comparison[comp][:different])
  end
end

puts comparison.to_yaml
