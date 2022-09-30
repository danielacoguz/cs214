Script started on 2022-02-04 23:50:47-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="154" LINES="12"]
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ cat logTable.rb
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

]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ ruby logTable.rb
Enter the start value: 1
Enter the stop value: 10  10
Enter the increment value: 0.5
the log of  + 1.0 is 0.0
the log of  + 1.5 is 0.17609125905568124
the log of  + 2.0 is 0.3010299956639812
the log of  + 2.5 is 0.3979400086720376
the log of  + 3.0 is 0.47712125471966244
the log of  + 3.5 is 0.5440680443502757
the log of  + 4.0 is 0.6020599913279624
the log of  + 4.5 is 0.6532125137753437
the log of  + 5.0 is 0.6989700043360189
the log of  + 5.5 is 0.7403626894942439
the log of  + 6.0 is 0.7781512503836436
the log of  + 6.5 is 0.8129133566428556
the log of  + 7.0 is 0.8450980400142568
the log of  + 7.5 is 0.8750612633917001
the log of  + 8.0 is 0.9030899869919435
the log of  + 8.5 is 0.9294189257142927
the log of  + 9.0 is 0.9542425094393249
the log of  + 9.5 is 0.9777236052888477
the log of  + 10.0 is 1.0
]0;ldc6@remotel3: ~/cs214/Labs/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/04[00m$ exit
exit

Script done on 2022-02-04 23:52:43-05:00 [COMMAND_EXIT_CODE="0"]
