Script started on 2022-01-29 22:58:25-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="166" LINES="13"]
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

#  Replace this line with the definition of function yearCode() 
def yearCode(year)
   if year =~ /freshman/ then 1
   elsif year =~ /sophomore/ then 2
   elsif year =~ /junior/ then 3
   elsif year =~ /senior/ then 4
   else 0
   end
end
if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ cat year_codes.rbexit[K./year_codes[8Pexitcat year_codes.rb[Kruby year_codes
year_codes:1: Invalid char `\x7F' in expression
year_codes:1: Invalid char `\x02' in expression
year_codes:1: Invalid char `\x01' in expression
year_codes:1: Invalid char `\x01' in expression
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: eight
Numeric code is: 0
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ ruby year_codes.rb
Enter the year: seventh
Numeric code is: 0
]0;ldc6@remotel3: ~/cs214/Labs/03[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/03[00m$ exit
exit

Script done on 2022-01-29 23:00:30-05:00 [COMMAND_EXIT_CODE="0"]
