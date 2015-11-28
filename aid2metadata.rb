require_relative 'parser'

def aid2metadata aid
  uri = "http://pubchem.ncbi.nlm.nih.gov/rest/pug/assay/aid/#{aid}/summary/JSON"
  JSON.parse(RestClient.get uri)["AssaySummaries"]["AssaySummary"][0]
end

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
  p aid
  map[aid] = aid2metadata aid
end

File.open("aid2metadata.yaml","w+"){|f| f.puts map.to_yaml}
