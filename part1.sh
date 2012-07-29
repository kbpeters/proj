#!usr/ruby/bin/env ruby

def palindrome? (string)
  output2 = string.gsub(/\W/, '').downcase
  if output2.reverse == output2 # Checks if the string is the same reversed
    puts "#{ string } is a palindrome."
  else
   puts "#{string} is not a palindrome."
  end
end


print "Please tell me the phrase you would like to check: "
name = gets.chomp
palindrome? name.to_s
