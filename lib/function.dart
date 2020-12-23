import 'package:flutter/material.dart';

void main()
{
  // add();
  // sub() ;
  // var m = Mult() ;
  // print(m) ;

  // var d = div(25, 2) ;
  // print(d) ;
  // sayHi(x: 'like' , c: 'mo' , y: true);

  // var courses = ["Dart" , "Android", "Kotlin" , "Flutter"] ;
  // // pass a function to other function
  // courses.forEach((element) {printElement(element);});
  // // assign fun as variable
  // var pM = printMy;
  // pM(22);



//   // Anonymous Function
//   var courses = ["Dart" , "Android", "Kotlin" , "Flutter" , "Ios"] ;
// courses.forEach((String element) {print("$element") ;});
// // ==
// courses.forEach((String element) => print("$element") ;);


}

// fun declaration
// syntax
// return_type identifer (parameter)
// {
//   // fun body
// }

add()
{
  print("object") ;
}
/*function shorthand or arrow => syntax*/
sub () => print(5-2);

int Mult ()
{
  return 5*5 ;
}

double div (int x , int y)
{
  return x/y ;
}

// positional parameter
void sayHello (String message , int lines)
{
  print("Hello developer");
}

// named parameter
void sayHi({String x , bool  y , String c})
{
  print("Hello developer");

}

void printElement(String element)
{
  print("your element $element") ;
}

void printMy(int x) => print(x);

Function male  (num add)
{
  return (i) => add + i ;
}
