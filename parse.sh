require 'csv'

# bail out unless we get the right number of command line arguments
unless ARGV.length == 1
  puts "Dude, not the right number of arguments."
  exit
end


input_file = ARGV[0]

CSV.foreach(input_file) do |row|
 if row[2].to_s == " 7/17'12" 
  puts row[0].to_s + "," + row[1].to_s
 end
end

