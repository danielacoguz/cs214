# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/29/22
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

##############################################
## Call returns sound of Goose               #
##Return: Honk! a string                     #
##############################################
    def call
        'Honk!'
    end
    
end