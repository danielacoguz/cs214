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
testName