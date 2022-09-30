# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/29/22
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

##############################################
## Call returns sound of Duck                 #
##Return: Quack! a string                    #
##############################################
    def call
        'Snork!'
    end
    
end