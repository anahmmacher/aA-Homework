def clever_octopus(array)
  hold = "fish"
  array.each do |fish|
    hold = fish if fish.length > hold.length
  end
  return hold
end


fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

p clever_octopus(fish_arr)