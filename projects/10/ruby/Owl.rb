
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the FlyingBird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/25/22
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird

##############################################
## Call returns sound of Owl                 #
##Return: Whoot! a string                    #
##############################################
    def call
        'Who-hoot!'
    end
    
end