Script started on 2022-03-30 19:07:24-04:00 [TERM="xterm-256color" TTY="/dev/pts/2" COLUMNS="254" LINES="12"]
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ cat NameTester.rb
####################################################
#Namew: Daniela Contreras Guzman
#NameTester.rb tests class Name and its Operations
#Date:03/13/22
# Worked with Germaine Hounakey
####################################################
require 'test/unit/assertions' # necesssary to assert
include Test::Unit::Assertions
class Name
def initialize(first, middle, last)
@first, @middle, @last = first, middle, last
end
attr_reader :first, :middle, :last
attr_writer :first, :middle, :last
def fullName
return first + " " + middle + " " + last
end
def print
puts(fullName)
return fullName
end

# Returns "First" "Middle" "Last" as "Last First M."
def lfmi
    return last + " " + first + " " + middle[0] + "."
    end
    # Reads in each of the names into name object.
    def readName
    puts "Enter first name: "
    @first = gets.chomp
    puts "Enter middle name: "
    @middle = gets.chomp
    puts "Enter last name: "
    @last = gets.chomp
    end
    end
    def testName
    name = Name.new("John", "Paul", "Jones")

    print "Testing class nameTester... "
    assert name.first == "John", "first failed"
    assert name.middle == "Paul", "middle failed"
    assert name.last == "Jones", "last failed"
    assert name.fullName == "John Paul Jones", "fullName failed"
    print " 0 "
    name.first = "Luz"
    
    name.middle = "Daniela"
    name.last = "Contreras"
    assert name.first == "Luz", "setFirst() failed"
    assert name.middle == "Daniela", "setMiddle() failed"
    assert name.last == "Contreras", "setLast() failed"
    assert name.lfmi == "Contreras Luz D.", "lfmi() failed"
    print " 1 "
    print "All tests have successfully passed!\n"

name.readName
puts name.lfmi
end
testName]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ruby NameTester.rb
Testing class nameTester...  0  1 All tests have successfully passed!
Enter first name: 
Luz
Enter middle name: 
Daniela
Enter last name: 
Contreas
Contreas Luz D.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ruby NameTester.rb
Testing class nameTester...  0  1 All tests have successfully passed!
Enter first name: 
Luz
Enter middle name: 
Maria
Enter last name: 
Guzman
Guzman Luz M.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ruby NameTester.rb
Testing class nameTester...  0  1 All tests have successfully passed!
Enter first name: 
David
Enter middle name: 
Kelly     Jones
Enter last name: 
Kelly
Kelly David J.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ ruby NameTester.rb
Testing class nameTester...  0  1 All tests have successfully passed!
Enter first name: 
Julia
Enter middle name: 
Megan
Enter last name: 
Fx
Fx Julia M.
]0;ldc6@maroon26: ~/cs214/Projects/08[01;32mldc6@maroon26[00m:[01;34m~/cs214/Projects/08[00m$ exit
exit

Script done on 2022-03-30 19:08:55-04:00 [COMMAND_EXIT_CODE="0"]
