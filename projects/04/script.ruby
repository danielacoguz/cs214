Script started on 2022-02-11 03:27:14-05:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="147" LINES="13"]
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ cat factorial.rb
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

]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 2
2.0! = 2
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 4
4.0! = 24
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 5
5.0! = 120
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 10
10.0! = 3628800
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 6
6.0! = 720
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 1
1.0! = 1
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 0
0.0! = 1
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ ruby factorial.rb
Enter n value: 4 9
9.0! = 362880
]0;ldc6@remotel3: ~/cs214/Projects/04[01;32mldc6@remotel3[00m:[01;34m~/cs214/Projects/04[00m$ exit
exit

Script done on 2022-02-11 03:30:42-05:00 [COMMAND_EXIT_CODE="0"]
