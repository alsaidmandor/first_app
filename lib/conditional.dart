import 'package:flutter/material.dart';

void main()
{
  // conditional expression
  /*
  *
  * condition ? expr1 : expr2 .
  *
  * if condition is true , evaluates expr1 (and returns its value) : otherwise ,
  * evaluates and   returns the value of expr1
  *
  * expr1 ?? expr2
  * if expr1 is non_null ,  returns its value;  otherwise ,
  *  evaluates and   returns the value of expr2
  *
  * */

  var isPublic = true ;
  var visibility =  isPublic ? "public" : 'private' ;
  print(visibility) ;
}