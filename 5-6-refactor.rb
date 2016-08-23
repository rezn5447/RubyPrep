def reverse_name(name)
  name.split(" ").reverse!.join(" ")
end

def code(letters)
  idx = 0
  ali_name = ""
  while idx < letters.length
  cipher = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}
    
    if cipher.has_key?(letters[idx].downcase)
      ali_name << cipher[letters[idx]]
    elsif cipher.has_key?(letters[idx].next.downcase)
      ali_name << letters[idx].next.next
    elsif letters[idx] == " "
      ali_name << " "
    else
      ali_name << letters[idx].next
    end
  idx += 1
  end
  ali_name
end
### DATABASE IS INITIALIZED HERE BUT PASSED INTO USER INTERFACE AS DB ###
database = {}

## PASSED IN HERE ##
def user_interface(db)
  puts "Whats the spy name?"
  input = gets.chomp
  until input == "quit"
    puts "Next Name please:"
    db.store(input, reverse_name(code(input)))
    input = gets.chomp
  end
  puts "\n"
  puts "All Values Entered"
  puts "\n"
  db.each do |k,v|
  	puts "#{k} will now be known as #{v}"
  end
end

## INITIALIZED USER INTERFACE HERE ##
user_interface(database)


