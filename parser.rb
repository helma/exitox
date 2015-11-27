require 'yaml'

@exitox = {}
["halogenide.yaml","aromaten.yaml","ester.yaml"].each do |f|
  YAML.load_file(f).each do |group,data|
    @exitox[group] = {}
    data.each do |compound,entries|
      @exitox[group][compound] = { true => [], false => [] }
      entries[:targets].each do |cat,targ|
        targ.each do |t|
          t["Assay IDs"].is_a?(Fixnum) ?  @exitox[group][compound][cat] << t["Assay IDs"] : @exitox[group][compound][cat] += t["Assay IDs"].split(" ").collect{|i| i.to_i}
        end
      end
      entries[:assays].each do |cat,targ|
        @exitox[group][compound][cat] += targ.values unless targ.empty?
      end
    end
  end
end
#puts @exitox.to_yaml
