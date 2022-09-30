/* Ostrich.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/30/22
 ******************************************************/

public class Ostrich extends WalkingBird {

    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Ostrich()
     {
        super();
     }
   
     public Ostrich(String name)
     {     
       super(name);
     } 
   
    /* A Goose's Call
     * Return: a goose-call ("Honk!").
     */
   
     public String call()
     {
       return "Snork!";
     } 
   
   
   }