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
