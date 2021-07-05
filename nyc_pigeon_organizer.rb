require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  # subway = data[:lives]["Subway"]
  pigeon_list = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, names|
      names.each do |name|
      if pigeon_list[name] == nil
        pigeon_list[name]={}
      end
      if pigeon_list[name][color_gender_lives] == nil
        pigeon_list[name][color_gender_lives] = []
      end
        pigeon_list[name][color_gender_lives]<< stats.to_s
      end
    end
  end
  pigeon_list
end
