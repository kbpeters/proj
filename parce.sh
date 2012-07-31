require 'csv'


$global_date

def prep_date (string)
  test_char = string[0]
  #process_date = "\"" + string[1] + '/' + string[3,4] + "\'" + "12\"" 
  
  if test_char == "0"
    process_date = "\s" + string[1] + "/" + string[3,4] + "\'" + "12" 
  else
    process_date = "1" +  string[1] + "/" + string[3,4] + "\'" + "12"
  end
  $global_date = process_date.to_s
end


def parse_me (string)
  file_name = string
  CSV.foreach(file_name) do |row|
    if row[2].to_s == $global_date
      puts row[0].to_s + "," + row[1].to_s
    end
  end
end

prep_date(ARGV[1].to_s)
parse_me(ARGV[0].to_s)
