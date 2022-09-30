# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date: 03/25/22
####################################################

require './Bird.rb'

class Duck < Bird

##############################################
## Call returns sound of Duck                 #
##Return: Quack! a string                    #
##############################################
    def call
        'Quack!'
    end
    
end