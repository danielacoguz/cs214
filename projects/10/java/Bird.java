/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date:03/30/22
 ******************************************************/

import java.io.*;

public abstract class Bird
{

  public Bird()
  {
    myName = "";
  } 

  public Bird(String name)
  {
    myName = name;
  } 


  public String getName()
  {
    return myName;
  } 

  public String call()
  {
    return "Squaaaaaaaaaawk!";
  } 

  public abstract String Movement();

  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName() + ' ' +
                Movement() + " and says " + call() );
  } 


  private String myName;
}

