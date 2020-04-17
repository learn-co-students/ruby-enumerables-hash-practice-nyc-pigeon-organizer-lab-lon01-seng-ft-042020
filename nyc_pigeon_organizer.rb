def nyc_pigeon_organizer(data)
hash = {}
data.each do |tier1_attributes, values|
values.each do |value, array|
  array.each do |pigeon_names|
    if hash[pigeon_names] == nil
      hash[pigeon_names] = {}
      hash[pigeon_names][tier1_attributes] = []
    else 
      hash[pigeon_names][tier1_attributes] = []
end
end
end
end
hash.each do |pigeon_names, values|
  values.each do |hashvalue, array|
   data.each do |tier1_attributes, values|
    values.each do |value, array|

      array.each do |element|
        if element == pigeon_names && hashvalue == tier1_attributes
          hash[pigeon_names][hashvalue] << value.to_s
        end
      end
    end
  end
end
end
hash
end