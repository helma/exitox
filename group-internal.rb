require_relative 'parser.rb'

results = {}
@exitox.each do |group,compounds|
  results[group] = {}
  cnames = compounds.keys
  cnames.each_with_index do |c,i|
    c_measured_acts = @exitox[group][c][true] + @exitox[group][c][false] 
    cnames[i+1,cnames.size-i].each do |c2|
      comp = "#{c} -- #{c2}"
      c2_measured_acts = @exitox[group][c2][true] + @exitox[group][c2][false] 
      results[group][comp] = {}
      [true,false].each do |k|
        results[group][comp][k] = {
            :common => (@exitox[group][c][k] & @exitox[group][c2][k]).size,
            #c => @exitox[group][c][k] - @exitox[group][c2][k],
            #c2 => @exitox[group][c2][k] - @exitox[group][c][k],
        }
      end
    end
  end
end

puts results.to_yaml
