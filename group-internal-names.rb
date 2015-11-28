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
      [true,false].each do |k|
        results[group][comp][:common][k] = (@exitox[group][c][k] & @exitox[group][c2][k]).sort.collect{|aid| "#{@aid2name[aid]} (AID #{aid})"}
      end
      results[group][comp][:different] = ((@exitox[group][c][true] & @exitox[group][c2][false])+(@exitox[group][c][false] & @exitox[group][c2][true])).sort.collect{|aid| "#{@aid2name[aid]} (AID #{aid})"}
        
    end
  end
end

puts results.to_yaml
