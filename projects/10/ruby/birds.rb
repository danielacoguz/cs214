
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Daniela Contreras
# Date:03/25/2022
# worked with Germaine Hounakey
######################################################

#require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Kiwi.rb'
require './Ostrich.rb'
require './Penguin.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 =  Penguin.new "Peter"
bird4.print

bird5 = Kiwi.new "Kilo"
bird5.print

bird6 = Ostrich.new "Orville"
bird6.print

puts "\n\n"