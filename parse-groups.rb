require_relative 'parser.rb'
@results = {}
@exitox.each do |group,compounds|
  @results[group] = { true => nil, false => nil }
  compounds.each do |c,klass|
    klass.each do |k,aids|
      !@results[group][k].nil? ? @results[group][k] += aids : @results[group][k] = aids
    end
  end
  contradictory = @results[group][true] & @results[group][false]
  @results[group][true] -= contradictory
  @results[group][false] -= contradictory
end

