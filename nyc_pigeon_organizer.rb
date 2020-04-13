
#def nyc_pigeon_organizer(data)
#  new_hash = {}
#  data.each do |atributes_name, value|
#    value.each do |atributes_name, value|
#
#    end
#  end
#end
def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute_name, attributes|
    attributes.each do |attribute_value, pigeon_names|
      pigeon_names.each do |name|
        pigeon_list[name]||= {}
        pigeon_list[name][attribute_name] ||= []
        pigeon_list[name][attribute_name].push(attribute_value.to_s)
      end
    end
  end

  pigeon_list
end
