# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/25/22
####################################################

require './Bird.rb'

class Goose < Bird

##############################################
## Call returns sound of Goose               #
##Return: Honk! a string                     #
##############################################
    def call
        'Honk!'
    end
    
end