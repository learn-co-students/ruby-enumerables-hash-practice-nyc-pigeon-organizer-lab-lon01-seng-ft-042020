def nyc_pigeon_organizer(data)
  new_hash = {}
  pp data
 
 #note: this takes the source_hash and returns an Array of unique pigeon names
 pigeon_names =[]
 data.each_key do |attribute| 
  data[attribute].each_value do |name| 
    pigeon_names << name
  end
 end
 pigeon_names_flat = pigeon_names.flatten
 pigeon_names_unique = pigeon_names_flat.uniq

i = 0
while i < pigeon_names_unique.length do

pigeon_with_attributes = {
  :color => [],
  :gender => [],
  :lives => []
}

#note: this adds an attribute (as a String) to the relevant hash for the each pigeon
  data.each_key do |attribute_key|
    data[attribute_key].each do |key, value|
      if value.include?(pigeon_names_unique[i])
        pigeon_with_attributes[attribute_key] << key.to_s
      end
    end
  end

# #note: this adds the color that the pigeon has to it's color attribute
# data[:color].each do |key, value|
# if value.include?(pigeon_names_unique[0])
# pigeon[:color] << key
# end
# end

# #note: this adds the gender that the pigeon has to it's gender attribute
# data[:gender].each do |key, value|
# if value.include?(pigeon_names_unique[0])
# pigeon[:gender] << key
# end
# end

# #note: this adds the lives that the pigeon has to it's lives attribute
# data[:lives].each do |key, value|
# if value.include?(pigeon_names_unique[0])
# pigeon[:lives] << key
# end
# end
 
 new_hash[pigeon_names_unique[i]] = pigeon_with_attributes
 i += 1
 end
pp new_hash
end