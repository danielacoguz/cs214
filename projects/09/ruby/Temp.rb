#######################################################################################################################
#### Name: Daniela Contreras
#### Date: 03/19/2022
### Temp.rb is a module containing the class Temperature
###
module Temperatures
    class Temp
      # Initializes Temp
      def initialize(degrees, scale)
        if isValid(degrees, scale) then
        @degree = degrees
        @scale = scale
        end
      end
  
      # Accessors for Temp
      attr_reader :degree, :scale
  
      #######################################################################
      # readTemperature: reads in degrees and its scale
      # Output: user sets new value
      #######################################################################
      def readTemperature
        print "Enter Degrees and Scale: "
        temperature = gets
        anArray = temperature.split(" ")
        initialize( anArray[0].to_f, anArray[1][0,1] )
      end
  
      #######################################################################
      # writeTemperature: prints the temperature to the user/screen
      #######################################################################
      def writeTemperature
         print @degree.round(2).to_s + " " + @scale.to_s
      end
  
      #######################################################################
      # toF: converts Temperature to Fahrenheit
      #######################################################################
      def toF
        if @scale.upcase == 'K' then
            @degree = (@degree-273.15)*9/5+32;
        elsif @scale.upcase == 'C' then
            @degree = @degree*9/5+32;
        end
        @scale = 'F';
      end
  
      #######################################################################
      # toC: converts Temp to Celsius
      #######################################################################
      def toC
        if @scale.upcase == 'K' then
            @degree = @degree-273.15;
        elsif @scale.upcase == 'F' then
            @degree = (@degree-32)*5/9;
        end
        @scale = 'C';
      end
      #######################################################################
      # toK: converts Temp to Kelvin
      #######################################################################
      def toK
        if @scale.upcase == 'C' then
          @degree = @degree + 273.15;
        elsif @scale.upcase == 'F' then
            @degree = (@degree-32)*5/9+273.15;
        end
        @scale = 'K';
      end
  
      #######################################################################
      # toScale: converts Temp to scale of choice
      #######################################################################
      def toScale(scale)
        if    scale.upcase == "F" then
          toF
        elsif scale.upcase == "C" then
          toC
        elsif scale.upcase == "K" then
          toK
        end
      end
  
      #######################################################################
      # raiseTemp: increases Temp by degree
      # Receive: aTemp, a Temp
      #######################################################################
      def raiseTemp(degree)
        if isValid(@degree+degree, @scale) then
        @degree = @degree + degree
        end
      end
  
      #######################################################################
      # lowerTemp: decreases Temp by degree
      # Receive: aTemp, a Temp
      #######################################################################
      def lowerTemp(degrees)
        if isValid(@degree-degrees, @scale) then
              @degree = @degree - degrees
        end
      end
  
      #######################################################################
      # isEqual: checks the equality of Temperatures across scales
      #######################################################################
      def isEqual(temp)
         origScale1 = @scale
         origScale2 = temp.scale
         temp.toK
         toK
         boolTest = (@degree == temp.degree)
         toScale(origScale1)
         temp.toScale(origScale2)
         return boolTest
      end
  
      #######################################################################
      # isLessThan: checks lessThan of Temperatures 
      #######################################################################
      def isLessThan(temp)
         origScale2 = temp.scale
         origScale1 = @scale
         temp.toK
         toK
         boolTest = (@degree < temp.degree)
         toScale(origScale1)
         temp.toScale(origScale2)
         return boolTest
      end
      #######################################################################
      # isValid: checks Temperatures
      #######################################################################
      def isValid(degree, scale)
        if    scale.upcase == 'K' and degree >= 0.00    then
          return true 
        elsif scale.upcase == 'C' and degree >= -273.15 then
    return true
        elsif scale.upcase == 'F' and degree >= -459.67 then
    return true
        else
    puts "Error: isValid(), Invalid Temperature."
    return false
        end
      end
    end
  end