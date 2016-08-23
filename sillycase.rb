# Create a function that takes a string and returns that string with the first half lowercased and the last half uppercased.

# eg: foobar == fooBAR

# If it is an odd number then 'round' it up to find which letters to uppercase. See example below.

# sillycase("brian")  
# //         --^-- midpoint  
# //         bri    first half (lower-cased)  
# //            AN second half (upper-cased)  

def sillycase(str)
  midpoint = (str.length/2.0).ceil
  p midpoint
  first_half = str[0...midpoint].downcase
  p first_half
  second_half = str[midpoint..-1].upcase
  p second_half
  return first_half + second_half
end

p sillycase("Jess")
p sillycase("Cas")
