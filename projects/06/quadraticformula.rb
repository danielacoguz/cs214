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


            
    