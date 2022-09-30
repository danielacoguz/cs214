/*temp_tester.java is a test driver for class Temperature
** Worked with Germaine Hounakey
***Name: Daniela Contreras
***Date: 03/18/
*/
import java.util.Scanner;

public class temp_tester{
    public static void main(String[] args){

        //Scanner receives input from the uder
        Scanner keyboard = new Scanner(System.in);

        //Two temmperature objects
        Temperature baseTemperature = new Temperature(0.0, 'K');
        Temperature limitTemperature = new Temperature(0.0, 'K');

        // Prompt user for base temperature
        System.out.println("Base Temperature");
        baseTemperature.readTemperature(keyboard);

        // Prompt user for limit temperature
        System.out.println("Limit Temperature");
        limitTemperature.readTemperature(keyboard);

        // Prompt user for increment value
        System.out.print("Enter Step Value: ");
        double stepValue = keyboard.nextDouble();

        // Store original scale for reset each loop
        char origScale = baseTemperature.getScale();

        // Loop to print temperature table
        while (baseTemperature.isLess(limitTemperature) || baseTemperature.isEqual(limitTemperature) ) {
        // Print Fahrenheit
            System.out.print("Fahrenheit: ");
            baseTemperature.toFahrenheit();
            baseTemperature.writeTemperature();
            System.out.print("\t");

            // Print Celsius
            System.out.print("Celsius: ");
            baseTemperature.toCelcius();
            baseTemperature.writeTemperature();
            System.out.print("\t");
     
            // Print Kelvin
            System.out.print("Kelvin: ");
            baseTemperature.toKelvin();
            baseTemperature.writeTemperature();
            System.out.print("\n");
     
            // Get baseTemp to original scale and increment temperature
            baseTemperature.toScale(origScale);
            baseTemperature.raiseTemperature(stepValue);
        }
    }

}




