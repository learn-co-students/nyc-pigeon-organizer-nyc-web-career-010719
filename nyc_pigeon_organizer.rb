def nyc_pigeon_organizer(data)
  #keys
  names = []
  pigeon_hash = {}
  data.each do |attribute, items|
    items.each do |quality, array|
      array.each do |name|
        names << name if !names.include?(name)
      end
    end
  end
#values
  names.each do |pigeon|
    pigeon_hash[pigeon] = Hash.new {|k, v| k[v] = []}
    data.each do |attribute, items|
      pigeon_hash[pigeon][attribute]
      items.each do |quality, array|
        array.each do |name|
          pigeon_hash[name][attribute] << quality.to_s if name == pigeon
        end
      end
    end
  end
  pigeon_hash
end
