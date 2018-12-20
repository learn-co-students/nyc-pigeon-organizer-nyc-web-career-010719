require "pry"



def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, attribute_hash|
    attribute_hash.each do |quality, array|
      array.each do |name|
        pigeon_list[name] = {}
      end
    end
  end

  pigeon_list.each do |key, value|
    data.each do |attribute, attribute_hash|
      attribute_hash.each do |quality, array|
        array.each do |name|
          if name == key
            if !pigeon_list[key][attribute]
              pigeon_list[key][attribute] = []
              pigeon_list[key][attribute] << quality.to_s
            else
              pigeon_list[key][attribute] << quality.to_s
            end
          end
        end
      end
    end
  end

pigeon_list
end


#
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
#
#
# nyc_pigeon_organizer(pigeon_data)
