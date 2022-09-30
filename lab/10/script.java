Script started on 2022-03-24 22:29:59-04:00 [TERM="xterm-256color" TTY="/dev/pts/1" COLUMNS="163" LINES="11"]
]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ cat Birds.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Daniela Contreras 
 * Date:03/24/22
 *********************************************************/

public class Birds {


  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();


      Owl bird4 = new Owl("Woodsey");
      bird4.print();
      System.out.println();
    }
}

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ cat Bird.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date:03/24/22
 ******************************************************/

import java.io.*;

public class Bird
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


  public void print()
  {
    System.out.println( getName() + ' ' + getClass().getName()
                           + " says " + call() );
  } 



  private String myName;
}

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ cat Owl.java
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

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ cat Goose.java
/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/24/22
 ******************************************************/

public class Goose extends Bird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Goose()
  {
     super();
  }

  public Goose(String name)
  {     
    super(name);
  } 

 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */

  public String call()
  {
    return "Honk!";
  } 


}

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ cat Duck.java
/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Daniela Contreras
 * Date: 03/24/22
 ******************************************************/

public class Duck extends Bird{
  

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
  public Duck() {
    super();
 }

 public Duck(String name)
 {     
    super(name);
 } 

 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */

  public String call()
  {
    return "Quack!";
  } 
}

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ javac -deprecation Birds.java
]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ java Birds.aja[K[K[K[K[Ks

Welcome to the Bird Park!

Hawkeye Bird says Squaaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose Goose says Honk!
Woodsey Owl says Hoot!

]0;ldc6@remotel3: ~/cs214/Labs/10/java[01;32mldc6@remotel3[00m:[01;34m~/cs214/Labs/10/java[00m$ exit
exit

Script done on 2022-03-24 22:32:16-04:00 [COMMAND_EXIT_CODE="0"]
