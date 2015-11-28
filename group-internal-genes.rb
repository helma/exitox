require_relative 'parser.rb'

@aid2metadata = YAML.load_file("aid2metadata.yaml")

def genes aid
  @aid2metadata[aid]["Target"] ? @aid2metadata[aid]["Target"].collect{|t| {t["GI"] => t["Name"]}} : nil
end

def aids2genes aids
  aids.uniq.collect{|aid| genes(aid)}.flatten.compact.uniq.sort{|a,b| a.keys.first <=> b.keys.first}
end

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
        results[group][comp][:common][k] = aids2genes(@exitox[group][c][k] & @exitox[group][c2][k])
      end
      results[group][comp][:different] = aids2genes((@exitox[group][c][true] & @exitox[group][c2][false])+(@exitox[group][c][false] & @exitox[group][c2][true]))
        
    end
  end
end

puts results.to_yaml
