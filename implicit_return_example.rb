aminals = ["cat", "dog", "duck"]

def add_to_ary(ary,elt)
	ary << elt
	puts "#{elt} is now in your array."
end

# add_to_ary doesn't return the new array as expected
# it returns nil, because the return value of puts is nil and puts is the last thing that was evaluated by the method

p add_to_ary(aminals,"rhino")

# fix it by putting "return ary" or just "ary" as the last line of add_to_ary

def add_to_ary_modified(ary,elt)
	ary << elt
	puts "#{elt} is now in your array."
	ary
end

p add_to_ary_modified(aminals,"giraffe")
