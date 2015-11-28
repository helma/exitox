require_relative 'parser'

def aid2name aid
  uri = "http://pubchem.ncbi.nlm.nih.gov/rest/pug/assay/aid/#{aid}/summary/JSON"
  response = JSON.parse(RestClient.get uri)["AssaySummaries"]["AssaySummary"][0]
  {
    :name => response["Name"],
    :gene_id => response["Target"][0]["GI"],
    :gene_name => response["Target"][0]["Name"],
  }
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
  map[aid] = aid2name aid
end

puts map.to_yaml
