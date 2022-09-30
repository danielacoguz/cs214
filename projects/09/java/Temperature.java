/*temperature.java builds class Temperature
*author: Daniela Contreras
* 03/18/2021
* Worked with Germaine Hounakey
*************************************************************************************************************************
*/
import java.util.Scanner;

class Temperature {
    /*********************************************************************************************************************
    *With the use of a DOuble and Char we construct temperature
    *Receive: Degrees as double and scale as a char
    *Output: Temperature Object
    */
    public Temperature(final double degree, final char scale){
        if (isValid(degree, scale)){
            myDegree = degree;
            myScale = scale;
        }
    }
    private
        double myDegree;
        char myScale;
    /*****************************************************************************************************************************
    *** getDegrees() retrives the degrees
    ***Outputs: Value of degrees
    */
    public final double getDegree(){
        return myDegree;
    }
     /*****************************************************************************************************************************
    *** getScale() retrives the Scale
    ***Outputs: Value of scale
    */
    public final char getScale() {
        return myScale;
    }
    /*****************************************************************************************************************************
    *** toFahrenheit() function converts degrees to Fahrenheit
    ***Outputs: Value of degrees in Fahrenheit
    */
    public void toFahrenheit(){
        if (Character.toUpperCase(myScale) == 'K')
            myDegree = Math.round(((myDegree-273.15)*9/5+32)*100)/100.0;
        else if (Character.toUpperCase(myScale) == 'C')
            myDegree = Math.round((myDegree*9/5+32)*100)/100.0;
        myScale = 'F';
    }
    /*****************************************************************************************************************************
    *** toCelcius() function converts Temp to Celsius
    ***Outputs: Value of degrees in Celcius
    */
    public void toCelcius(){
        if (Character.toUpperCase(myScale) == 'K')
            myDegree = Math.round((myDegree-273.15)*100)/100.0;
        else if (Character.toUpperCase(myScale) == 'F')
            myDegree = Math.round(((myDegree-32)*5/9)*100)/100.0;
        myScale = 'C';
    }
     /*****************************************************************************************************************************
    *** toKelvin() function converts Temp object to Celsius
    ***Outputs: Value of degrees in Kelvin
    */
    public void toKelvin(){
        if (Character.toUpperCase(myScale) == 'C')
            myDegree = Math.round((myDegree+273.15)*100)/100.0;
        else if (Character.toUpperCase(myScale) == 'F')
            myDegree = Math.round(((myDegree-32)*5/9+273.15)*100)/100.0;
        myScale = 'K';
    }
    /************************************************************************************************
    *raiseTemperature() increases myDegrees
    *Receive: degree in double
    **************************************************************************************/
    public void raiseTemperature(double degree){
        if(isValid(myDegree+degree, myScale)){
            myDegree += degree;
        }
    }
    /************************************************************************************************
    *lowerTemperature() decreases myDegrees
    *Receive: degree in double
    **************************************************************************************/
    public void lowerTemperature(double degree){
        if(isValid(myDegree-degree, myScale)){
            myDegree -= degree;
        }
    }
    /************************************************************************************************
    *isEqual() checks if operands are equal
    *Receive: temperature object
    *Return: Boolean ; True if equal false if otherwise
    **************************************************************************************/
    public boolean isEqual(Temperature aTemperature){
        Temperature aTemperatureCopy = new Temperature(aTemperature.getDegree(), aTemperature.getScale());
        Temperature localCopy = new Temperature(getDegree(), getScale());
        aTemperatureCopy.toKelvin();
        localCopy.toKelvin();
        return localCopy.getDegree() == aTemperatureCopy.getDegree();
    }
    /************************************************************************************************
    *isLess() checks less than relational operator across scales
    *Receive: temperature object
    *Return: Boolean ; True if less than false if otherwise
    **************************************************************************************/
    public boolean isLess(Temperature aTemperature){
        Temperature aTemperatureCopy = new Temperature(aTemperature.getDegree(), aTemperature.getScale());
        Temperature localCopy = new Temperature(getDegree(), getScale());
        aTemperatureCopy.toKelvin();
        localCopy.toKelvin();
        return localCopy.getDegree() < aTemperatureCopy.getDegree();
    }
    /************************************************************************************************
    *isValid(degre, scale) checks if degree is within range
    *Receive: Degrees, a double; Scale, a char
    *Return: Boolean ; True if Valid than false if otherwise
    **************************************************************************************/
    public boolean isValid(double degree, char scale) {
        return (  (Character.toUpperCase(scale) == 'K' && degree >=    0.00)
               || (Character.toUpperCase(scale) == 'C' && degree >= -273.15)
               || (Character.toUpperCase(scale) == 'F' && degree >= -459.67));
    }
    /***********************************************************************************************************************************************************************
    * readTemp()
    * Receive: Scanner keyboard for the input
    ************************************************************************************************************************************************************************/
    public void readTemperature(Scanner keyboard){
        System.out.print("Enter Degree along with Scale: ");
        double aDegree = keyboard.nextDouble();
        char aScale = keyboard.next().trim().charAt(0);
        if (isValid(aDegree, aScale) ) {
                myDegree = aDegree;
            myScale = aScale;
        }
    }
     /***********************************************************************************************************************************************************************
    * writeTemperature())
    * Receive: prints temperature
    ************************************************************************************************************************************************************************/
    public void writeTemperature(){
            System.out.print(Double.toString(myDegree) + " " + myScale);
    }
 /***********************************************************************************************************************************************************************
    * toScale() converts temperature to scale desired
    * Receive: Scale as a char
    ************************************************************************************************************************************************************************/
    public void toScale(char scale){
        switch(Character.toUpperCase(scale)){
            case 'F': toFahrenheit(); break;
            case 'C': toCelcius(); break;
            case 'K': toKelvin(); break;
        }
    }

}