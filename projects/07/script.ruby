Script started on 2022-03-15 09:10:18-04:00 [TERM="xterm-256color" TTY="/dev/pts/3" COLUMNS="106" LINES="27"]
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ cat array.rb
####################################################################
## Name: Daniela Contreras
## Date: 03/13/22
##worked with Germaine Hounakey
###############################################################
#readArray() Array with doubles
#Receive: anArray, an empty array
#########################################################
def readArray (anArray)
    if anArray.size > 0 then
        print "Enter array Elements: "
        for i in 0..anArray.size-1
            anArray[i] = gets.to_f
        end
    end

end
## printArray() outputs the values of anArray
## Receive: a full array
###########################################################

def printArray (anArray)
    print "Array: [ "
    if anArray.size > 0 then
        for i in 0..anArray.size
            print anArray[i]
            print ' ' 
        end
    else
        print "nothing here "    
    end
    print "\b] \n"

end

def main
    #get array size
    print "Enter array Size: "
    size = gets.to_i
    anArray = Array.new (size)
    readArray(anArray)
    printArray(anArray)
    
end
main
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ruby array.rb
Enter array Size: 4
Enter array Elements: 3
4
5
4
Array: [ 3.0 4.0 5.0 4.0  ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ruby array.rb
Enter array Size: 2
Enter array Elements: 4
3
Array: [ 4.0 3.0  ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ ruby array.rb
Enter array Size: 6
Enter array Elements: 3
4
5
3
4
3
Array: [ 3.0 4.0 5.0 3.0 4.0 3.0  ] 
]0;ldc6@remotel2: ~/cs214/Projects/07[01;32mldc6@remotel2[00m:[01;34m~/cs214/Projects/07[00m$ exit
exit

Script done on 2022-03-15 09:11:37-04:00 [COMMAND_EXIT_CODE="0"]
