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
#ends function