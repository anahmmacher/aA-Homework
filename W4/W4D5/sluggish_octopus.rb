def sluggish_octopus(array)
  sorted = true

  while sorted
    sorted = false

    (0...array.length - 1).each do |i|
      if array[i].length < array[i+1].length
        array[i], array[i+1] = array[i+1], array[i]
        sorted = true
      end
    end
  end
  array.first
end

fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

p sluggish_octopus(fish_arr)