Script started on 2022-03-25 21:04:58-04:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="148" LINES="11"]
]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ cat Owld[Ks[K.rb

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
    
end]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ cat Goose.rb
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
    
end]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ Duck[K[K[K[Kcat Duck.rb
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
    
end]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ cat Bird.rb

# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Daniela Contreras
# Date:03/25/2022
####################################################

class Bird

    attr_reader :name
  
    def initialize(name)
      @name = name
    end

    def call
        'Squaaaaaaawk!'
    end
    
    def className
        self.class.to_s
    end
    
    def print
        puts name + " " + className + " says " + call
    end
  
end]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ cat birds.rb

# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:Daniela Contreras
# Date:03/25/2022
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ ruby birds.rb

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaawk!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsey Owl says Who-hoot!


]0;ldc6@gold15: ~/cs214/Labs/10/ruby[01;32mldc6@gold15[00m:[01;34m~/cs214/Labs/10/ruby[00m$ exit
exit

Script done on 2022-03-25 21:05:48-04:00 [COMMAND_EXIT_CODE="0"]
