Script started on 2022-04-01 01:37:39-04:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="137" LINES="17"]
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ cat NameTester.rb
# NameTester.rb tests class Name and its operations
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Daniela Contreras
# Date: 03/11/2022
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name
  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last 
  end

  attr_accessor :first, :middle, :last;


  def fullName()
    (@first + " "  + @middle + " "  + @last);
  end

  def print()
    puts fullName
    fullName
  end

end

def testName
  name = Name.new("John", "Paul", "Jones")

    assert name.first == "John", "first failed"
    assert name.middle == "Paul", "middle failed"
    assert name.last == "Jones", "last failed"
    assert name.fullName == "John Paul Jones", "fullName failed"
    assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
end

testName

]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ ruby NameTester.rb
John Paul Jones
All tests passed!
]0;ldc6@remotel1: ~/cs214/Labs/08[01;32mldc6@remotel1[00m:[01;34m~/cs214/Labs/08[00m$ exit
exit

Script done on 2022-04-01 01:38:02-04:00 [COMMAND_EXIT_CODE="0"]
