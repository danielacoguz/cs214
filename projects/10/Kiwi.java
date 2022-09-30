/* Kiwi.java provides a Kiwi subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/30/22
 ******************************************************/

public class Kiwi extends WalkingBird {

    /* explicit constructor
     * Receive: name, a String 
     * PostCond: myName == name.
     */
     public Kiwi()
     {
        super();
     }
   
     public Kiwi(String name)
     {     
       super(name);
     } 
   
    /* A Kiwi's Call
     * Return: a Kiwi-call ("kee-wee!").
     */

     public String call()
     {
       return "kee-wee!";
     } 
   
   
   }