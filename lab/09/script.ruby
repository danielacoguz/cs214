Script started on 2022-03-18 17:22:31-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="80" LINES="24"]
]0;ldc6@gold23: ~/cs214/Labs/09/ruby[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/ruby[00m$ cat namae   meTester.rb
# nameTester.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Daniela Contreras
# Date:03/18/2022
####################################################
require './Name'
require 'test/unit/assertions'
include Test::Unit::Assertions


def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

]0;ldc6@gold23: ~/cs214/Labs/09/ruby[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/ruby[00m$ cat Name.rb
###################################################################################################
## Name.rb implements class Name.
## 
##Name: Daniela Contreras
##Date: 08/16/22
###################################################################################################

module Names
  class Name

    def initialize(first, middle, last)
      @first, @middle, @last = first, middle, last
    end

    attr_reader :first, :middle, :last

    def fullName
      @first + " " + @middle + " " + @last
    end

    def print
      puts fullName
      fullName
    end
  end
end ]0;ldc6@gold23: ~/cs214/Labs/09/ruby[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/ruby[00m$ cat Name.rb[6@nameTester.rb[1@ruby nameTester.rb
John Paul Jones
All tests passed!
]0;ldc6@gold23: ~/cs214/Labs/09/ruby[01;32mldc6@gold23[00m:[01;34m~/cs214/Labs/09/ruby[00m$ exit
exit

Script done on 2022-03-18 17:23:07-04:00 [COMMAND_EXIT_CODE="0"]
