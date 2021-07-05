def nyc_pigeon_organizer(data)
 new_hash = {}
 
 data.each do |key, value|

value.each do |describe, array|
 
 array.each do |name|

if new_hash.has_key?(name)
    
  if new_hash[name].has_key?(key)
    
    new_hash[name][key] << describe.to_s
 else
 new_hash[name][key] = [describe.to_s]
    end
     else
  new_hash[name] = {key => [describe.to_s]}
        end
      end
    end
  end
  new_hash
end
 

