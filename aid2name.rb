require_relative 'parser'
aids = []
@exitox.each do |g,d|
  d.each do |c,e|
    [true,false].each do |k|
      aids += @exitox[g][c][k]
    end
  end
end
map = {}
aids.uniq.sort.each do |aid|
  map[aid] = aid2name aid
end

puts map.to_yaml
