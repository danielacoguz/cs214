#! /usr/bin/ruby
# letter_grades.rb translates a numeric average into a letter grade
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The numeric average
# Precondition: The everage is an integer divisible by 10
# Output: The corresponding letter grade for the given integer value 

#  Replace this line with the definition of function letterGrade() 
def letterGrade(average)
    case (average)
    when 90 .. 100
        return 'A'
    when 80 .. 89
        return 'B'
    when 70 .. 79
        return 'C'
    when 60 .. 69
        return 'D'
    else 
        return 'F'
    end
end
 if __FILE__ == $0
    print "Enter the average score: "
    average = gets
    print "Letter code is: "
    puts letterGrade(average.to_i)
 end