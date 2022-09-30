 #include <cmath>
   using namespace std;

   bool quadraticRoots(double a, double b, double c,
                        double & root1, double & root2)
   {
      if (a != 0) {
         double arg = pow(b, 2.0) - 4 * a * c;
         if (arg >= 0) {
            root1 = (-b + sqrt(arg))/(2*a);
            root2 = (-b - sqrt(arg))/(2*a);
            return true;
         } else {
            cerr << "\n*** quadraticRoots(): b^2 - 4ac is negative!" << endl;
            root1 = root2 = 0.0;
            return false;
         }
      } else {
         cerr << "\n*** QuadraticRoots(): a is zero!" << endl;
         root1 = root2 = 0.0;
         return false;
      }
   }
