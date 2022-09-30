# Penguin.rb | Defines the Peguin class which inherits attributes and methods
#   from the WalkingBird superclass.
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/29/22
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

##############################################
## Call returns sound of Duck                 #
##Return: Quack! a string                    #
##############################################
    def call
        'huh-huh-huh-huh!'
    end
    
end