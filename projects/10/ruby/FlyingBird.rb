# FlyingBird.rb | Defines the Flying class which inherits attributes and methods
#   from the Bird superclass.
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/30/22
####################################################
require './Bird.rb'

class FlyingBird < Bird

################################################
##Call returns movement of Bird 
## Return: strolls by; a string
###############################################
    def movement
        "flew by"
    end
end
