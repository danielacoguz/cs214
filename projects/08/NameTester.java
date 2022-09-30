/*###################################################
#Name: Daniela Contreras Guzman
#NameTester.java tests class Name and its Operations
#Worked with Germaine Hounakey
#Date:03/13/22
*/
import java.util.Scanner;
public class NameTester
{
public static void main(String[] args)
{
Scanner keyboard = new Scanner(System.in);
System.out.print("Testing class NameTester...");
Name aName = new Name("John", "Paul", "Jones");
// Testing get functions
assert aName.getFirst().equals("John");
assert aName.getMiddle().equals("Paul");
assert aName.getLast().equals("Jones");
assert aName.toString().equals("John Paul Jones");
assert aName.lmfi().equals("John Jones P.");
System.out.print(" 0 ");
// Testing set functions
aName.setFirst("Luz");
aName.setMiddle("Daniela");
aName.setLast("Contreras");
// get with my name 
assert aName.getFirst().equals("Luz");
assert aName.getMiddle().equals("Daniela");
assert aName.getLast().equals("Contreras");
System.out.print(" 1 ");
System.out.println("All tests passed!");

System.out.print("Enter a full name: ");
//has aFuction (first midde or last) read name frm the keyboard accordingly
aName.readName(keyboard);
System.out.println(aName.toString());
}
}
class Name {


public String getFirst() { return myFirst; }
public String getMiddle() { return myMiddle; }
public String getLast() { return myLast; }
public String toString()
{
return myFirst + ' ' + myMiddle + ' ' + myLast;
}
public String lmfi()//returns full name by segments; frst middle last
{
    return myFirst + ' ' + myLast + ' ' + myMiddle.charAt(0) + '.';
}
// Setters
    public void setFirst(String aFirst) { myFirst = aFirst; }
    public void setMiddle(String aMiddle) { myMiddle = aMiddle; }
    public void setLast(String aLast) { myLast = aLast; }
// Reader
public void readName(Scanner keyboard)//scans keyboard input from user
{
    setFirst(keyboard.next());
    setMiddle(keyboard.next());
    setLast(keyboard.next());
}
public Name(String first, String middle, String last)
{
    myFirst = first; //first name
    myMiddle = middle; //middle name
    myLast = last; //last name
}
private String myFirst, myMiddle, myLast;
};