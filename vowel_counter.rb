# Instructions: Return the number (count) of vowels in the given string.

def getCount(inputStr)
	downcased_str = inputStr.downcase
  # Cas comment 1:  needs a counter
  vowels_counter = 0
  # Cas comments 2:  need an iterator for string character by character and pick out the vowels
  downcased_str.each_char do |char|
    if "aeiou".include?(char)
      vowels_counter += 1
    end
  end
  
  vowels_counter
end
