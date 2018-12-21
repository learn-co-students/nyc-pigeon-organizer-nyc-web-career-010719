def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |characteristics,options|
    options.each do |variable, pigeons|
      pigeons.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][characteristics] ||= []
        pigeon_list[name][characteristics] << variable.to_s
      end
    end
  end
  pigeon_list
end
