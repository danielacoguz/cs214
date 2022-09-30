# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the walkingBird superclass.
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/30/22
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

##############################################
## Call returns sound of Duck                 #
##Return: Quack! a string                    #
##############################################
    def call
        'kee-wee!'
    end
    
end