def slow_dance(dir, array)
  array.each_with_index do |tentacle, i|
    return i if tentacle == dir
  end
end

array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

p slow_dance("up", array)
p slow_dance("right-down", array)