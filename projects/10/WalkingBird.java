/* WalkingBirds.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date:03/30/22
 ******************************************************/

public class WalkingBird extends Bird{


    public WalkingBird() {
    super();
 }

    public WalkingBird(String name)
 {     
    super(name);
 }
 
    public final String Movement() {
        return("strolls by");
    }

}