Script started on 2022-03-17 22:11:08-04:00 [TERM="xterm-256color" TTY="/dev/pts/19" COLUMNS="80" LINES="24"]
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ cat quadraticformula.rb
##############################################################################################################
##quadraticformula.rb calculates the roots of a quadratic equation
##pre-condition: a!=0 and inside of the roor (b^2-4ac) cannot be negative
##Output: root1 and root2
##Name: Daniela Contreras
##Date: March 06 2022
##############################################################################################################
#function QuadraticFormula()
#taking in parameters: a, b, c
#returning a vector with roots of equation
####################################################
def quadraticformula (a, b, c)

    if a!= 0.0 then
        arg = b**2 - 4 * a * c ##function inside square root is arg
        if arg >= 0.0 then # stating we must not ge5t a negative arg
            root1 = (-b + Math.sqrt(arg))/(2*a) #1st root adding squareroot
            root2 = (-b - Math.sqrt(arg))/(2*a) #2nd root subrtracting squaroot
        else
            root1 = root2 = 0.0
            puts "\t Quadratic Roots are negative!"
        end
        
    else
        root1 = root2 = 0.0
        puts "\n a is a zero!"
    end
    [root1, root2]
end
######################################################################
## main fucntion outputting values
## receives a, b and c from user
## outputs roots
## helped by germaine Hounakey on lines 39- 50
#######################################################################
def main
    puts "To obtain Quadratic formula roots enter coefficient values"

    print "\ta =  "
    a = gets.to_f

    print"\tb =  "
    b = gets.to_f

    print"\tc =  "
    c = gets.to_f

    roots = quadraticformula(a, b, c)

    if roots[0] != 0.0 and roots[1] != 0.0 then
        puts "First root is equal to: " <<roots[0].to_s
        puts "\n The second root is equal to: " <<roots[1].to_s
    end
end
    main


            
    ]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ cat quadraticformula.rb[2Pruby quadraticformulacd 06[KProjects/06[Kruby quadraticformula.rb
To obtain Quadratic formula roots enter coefficient values
	a =  0
	b =  4
	c =  3

 a is a zero!
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ruby quadraticformula.rb
To obtain Quadratic formula roots enter coefficient values
	a =  1
	b =  9
	c =  10
First root is equal to: -1.2984378812835757

 The second root is equal to: -7.701562118716424
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ruby quadraticformula.rb
To obtain Quadratic formula roots enter coefficient values
	a =  1 3
	b =  9
	c =  4
First root is equal to: -0.5425728922436619

 The second root is equal to: -2.457427107756338
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ ruby quadraticformula.rb
To obtain Quadratic formula roots enter coefficient values
	a =  6
	b =  7 2
	c =  7
	 Quadratic Roots are negative!
]0;ldc6@remotel1: ~/cs214/Projects/06[01;32mldc6@remotel1[00m:[01;34m~/cs214/Projects/06[00m$ exit
exit

Script done on 2022-03-17 22:13:16-04:00 [COMMAND_EXIT_CODE="0"]
