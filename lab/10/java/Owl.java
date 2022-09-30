/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/24/20222
 ******************************************************/

public class Owl extends Bird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Owl()
  {
    super();
  }

  public Owl(String name)
  {     
    super(name);
  } 

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */

  public String call()
  {
    return "Hoot!";
  } 
} 

