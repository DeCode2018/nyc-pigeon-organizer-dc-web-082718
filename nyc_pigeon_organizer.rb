def nyc_pigeon_organizer(data)
  # write your code here!

name_arr = []
att = []

    data.each do |attributes, value|
      att << attributes
      value.each do |k,name|
        name.each do |n|
          name_arr << n
        end
      end
    end

pigeon_list ={}

name_arr.each do |n|
  pigeon_list[n] = {}
att.each do |x|
  pigeon_list[n][x] = []
end
end

pigeon_list.each do |name, hash|
  hash.each do |k,a|
    data[k].each do |key, array|
      array.each do |n|
        if n == name
          pigeon_list[name][k] << key.to_s
        end
      end
    end
  end
end

pigeon_list
end
