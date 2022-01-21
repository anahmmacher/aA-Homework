def dominant_octopus(array)
  return array if array.length <= 1

  mid = array.length/2
  left_arr = array[0...mid]
  right_arr = array[mid..-1]

  left_call = dominant_octopus(left_arr)
    right_call = dominant_octopus(right_arr)

    new_arr = merge(left_call, right_call)
end

private
def merge(left_call, right_call)
  merged = []
  while !left_call.empty? && !right_call.empty?
      if left_call[0].length < right_call[0].length
          merged << left_call.shift
      else
          merged << right_call.shift
      end
  end
  merged + left_call + right_call
end



fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
'fiiiissshhhhhh']

p dominant_octopus(fish_arr).last