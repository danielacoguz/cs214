#######################################################################################################################
#### Name: Daniela Contreras
#### Date: 03/19/2022
### temperature_tester.rb tests class temp
##########################################################################################################################
require './Temp'

def testTemperature
  # Creates Temp objects
  baseTemp = Temperatures::Temp.new(0.0, 'K')
  limitTemp = Temperatures::Temp.new(0.0, 'K')

  # base temperature
  puts "Base Temperature"
  baseTemp.readTemperature

  # limit temperature
  puts "Limit Temperature"
  limitTemp.readTemperature

  # increment value
  print "Enter Step Value: "
  stepValue = gets.to_f

  # Store original scale for reset each loop
  originalScale = baseTemp.scale

  # Loop to printout temperature table
  while (baseTemp.isLessThan(limitTemp) || baseTemp.isEqual(limitTemp)) do
    # Fahrenheit
    print "Fahrenheit: "
    baseTemp.toF
    baseTemp.writeTemperature
    print "\t"

    # Celsius
    print "Celsius: "
    baseTemp.toC
    baseTemp.writeTemperature
    print "\t"

    # Kelvin
    print "Kelvin: "
    baseTemp.toK
    baseTemp.writeTemperature
    print "\n"

    # Get baseTemp to original scale and increment temperature
    baseTemp.toScale(originalScale)
    baseTemp.raiseTemp(stepValue)
  end
end

testTemperature