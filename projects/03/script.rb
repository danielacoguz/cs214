Script started on 2022-02-02 20:04:41-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="151" LINES="12"]
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ cat letter_grades.rb
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
 end]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb
Enter the average score: 90
Letter code is: A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb
Enter the average score: 87
Letter code is: B
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb
Enter the average score: 77
Letter code is: C
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb
Enter the average score: 61
Letter code is: D
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb
Enter the average score: 59
Letter code is: F
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ex[K[Kruby letter_grades.rb
Enter the average score: 100
Letter code is: A
]0;ldc6@remotel2: ~/cs214/Projects/03[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/03[00m$ ruby letter_grades.rb[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[K[Kexit
exit

Script done on 2022-02-02 20:05:59-05:00 [COMMAND_EXIT_CODE="0"]
