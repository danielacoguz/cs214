/* Penguin.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/30/22
 ******************************************************/

public class Penguin extends WalkingBird {

    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Penguin()
     {
        super();
     }
   
     public Penguin(String name)
     {     
       super(name);
     } 
   
    /* A Penguin's Call
     * Return: a goose-call ("Huh-huh-huh-huuuuh!").
     */
   
     public String call()
     {
       return "Huh-huh-huh-huuuuh!";
     } 
   
   
   }