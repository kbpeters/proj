#!usr/ruby/bin/env ruby

def count_words (string)
  output = string.gsub(/\b/, '')
  puts "This is the word broken up by words" + output
end

def palindrome? (string)
  output2 = string.gsub(/\W/, '').downcase
  if output2.reverse == output2 # Checks if the string is the same reversed
    #puts "#{string} is a palindrome."
    output2
  else
    #puts "#{string} is not a palindrome."
    output2
  end
end

print "Please tell me the phrase you would like to check: "
palindrome? name = gets.chomp
#count_words name
