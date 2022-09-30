#! /usr/bin/ruby
# logTable.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras ldc6
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


   

if __FILE__ == $0
   print "Enter the start value: "
####below code -> GET THESE VALUES AS NUMBERS
   start = gets.chomp.to_f ###initializing variable Start
   print "Enter the stop value: "
   stop = gets.chomp.to_f  ###initializing variable Start
####
   print "Enter the increment value: "
   increment = gets.chomp.to_f   ###initializing variable Start
   while start <= stop ##statement having initialzing value be < end value
      puts ("the log of  + #{start} is #{Math.log10(start)}") ##takes log of 10 for values
      start = start + increment ## does the actual incrementation from starting value
   end
   
end

