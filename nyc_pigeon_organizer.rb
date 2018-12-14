require 'pry'

def nyc_pigeon_organizer(pigeon_data)


pigeon_names = []
unique_pigeon_names = []
a_array = []
a_hash = {}
pigeon_hash = {}

  pigeon_data.each do |attribute, data|
    data.each do |key, array|
      array.each do |names|
        pigeon_names.push(names)
      end
    end
  end

unique_pigeon_names = pigeon_names.uniq

  unique_pigeon_names.each do |name|
    pigeon_data.each do |attribute, data|
      data.each do |key, array|
        if array.include?(name)
            a_array.push(key.to_s)
        end
      end
      a_hash[attribute] = a_array
      a_array = []
    end
  pigeon_hash[name] = a_hash
  a_hash = {}
  end

return pigeon_hash

end
