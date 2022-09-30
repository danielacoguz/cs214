
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/25/22
####################################################

require './Bird.rb'

class Owl < Bird

##############################################
## Call returns sound of Owl                 #
##Return: Whoot! a string                    #
##############################################
    def call
        'Who-hoot!'
    end
    
end