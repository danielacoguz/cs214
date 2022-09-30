   #include <iostream.h>

   void printArray(double anArray[], int itsSize, ostream & out = cout)
   {
      for (int i = 0; i < itsSize; i++) {
         out << anArray[i] << endl;
      }
   }
      void readArray(double anArray[], int itsSize, istream & in = cin)
   {
      for (int i = 0; i < itsSize; i++) {
         in >> anArray[i];
      }
   }