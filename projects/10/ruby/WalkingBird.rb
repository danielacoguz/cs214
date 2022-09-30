# WalkingBird.rb | Defines the Walking class which inherits attributes and methods
#   from the Bird superclass.
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/30/22
####################################################
require './Bird.rb'

class WalkingBird < Bird

################################################
##Call returns movement of Bird 
## Return: flies by; a string
###############################################
    def movement
        "strolled by"
    end
end