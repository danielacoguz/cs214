Script started on 2022-01-17 19:07:59-05:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="80" LINES="24"]
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ cat rectangleArea.rb
#! /usr/bin/ruby
# 
# Input: the area of a rectangle
# Precondition: the values are nto negative
# Output: the area of the rectangle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by:Daniela Contreras
# Date:01/17/22
###############################################################

# function rectangleArea returns a rectangle's area, given its height and width
# Parameters: l and width
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
#define the function

def rectangleArea(w, h)
    h * w
end
# if the are is equal to zero then execute the code
if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its height: "
   height = gets.chomp.to_f
   print "enter its width: "
   width = gets.chomp.to_f
   print "The rectangle's area is: "
   puts rectangleArea(width, height)
end
#ends function]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ ruby rectangleArea.rb
To compute the area of a rectangle,
 enter its height: 5
enter its width: 3
The rectangle's area is: 15.0
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ ruby rectangleArea.rb
To compute the area of a rectangle,
 enter its height: 4
enter its width: 6
The rectangle's area is: 24.0
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ ruby rectangleArea.rb
To compute the area of a rectangle,
 enter its height: 10
enter its width: 3
The rectangle's area is: 30.0
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ 5 ruby rectangleArea.rb
To compute the area of a rectangle,
 enter its height: 20
enter its width: 3
The rectangle's area is: 60.0
]0;ldc6@maroon25: ~/cs214/Projects/01[01;32mldc6@maroon25[00m:[01;34m~/cs214/Projects/01[00m$ exit
exit

Script done on 2022-01-17 19:09:35-05:00 [COMMAND_EXIT_CODE="0"]
