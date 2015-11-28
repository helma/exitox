require_relative 'parser.rb'

results = {}
@exitox.each do |group,compounds|
  results[group] = {}
  cnames = compounds.keys
  cnames.each_with_index do |c,i|
    cnames[i+1,cnames.size-i].each do |c2|
      comp = "#{c} - #{c2}"
      results[group][comp] = {}
      results[group][comp][:common] = {}
      diff = []
      [true,false].each do |k|
        results[group][comp][:common][k] = (@exitox[group][c][k] & @exitox[group][c2][k]).size
      end
      results[group][comp][:different] = ((@exitox[group][c][true] & @exitox[group][c2][false])+(@exitox[group][c][false] & @exitox[group][c2][true])).size
        
      common = results[group][comp][:common][true] + results[group][comp][:common][false]
      results[group][comp][:similarity] = common.to_f/(common+results[group][comp][:different])
    end
  end
end

puts results.to_yaml
