#! /usr/bin/ruby
# factorial.rb displays a table of logarithms
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras ldc6
# Date: 02/07/22
# Input:  n can be any integer
# Precondition: n must be any number > 0
#    
# Output:factorial of n 

def factorial (n)
      answer = 1

      for i in 2..n do
         answer *= i
      
      end
      return answer
end

if __FILE__ == $0
   print "Enter n value: "
####below code -> GET THESE VALUES AS NUMBERS
   n = gets.chomp.to_f ###initializing variable Start
   print n
   print "! = "
   puts factorial(n)
  
end

