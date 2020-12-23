
import 'package:first_app/route/Student.dart';
import 'package:first_app/route/home.dart';
import 'package:first_app/route/second.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(App()) ;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home' :(_) => Home() ,
        '/second' :(_) => Second() ,
      },
      onGenerateRoute: (settings)
    {
      if('/second' == settings.name)
        {
          Student st = settings.arguments ;
          return MaterialPageRoute(builder:(context) => Second(name: st.name, age: st.age,));
        }
      }
    ,
      initialRoute: '/home',
      // home:  Home(),
    );
  }
}
