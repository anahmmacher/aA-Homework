def fast_dance(dir, hash)
    return hash[dir] if hash.has_key?(dir)
end

hash = {"up"=>0 ,"right-up"=>1 ,"right"=>2, "right-down"=>3, "down"=>4, "left-down"=>5, "left"=>6,  "left-up"=>7 }

p fast_dance("up", hash)
p fast_dance("right-down", hash)