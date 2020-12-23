import 'package:first_app/Classs.dart';
import 'package:first_app/route/Student.dart';
import 'package:first_app/route/main.dart';
import 'package:first_app/route/second.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [
          IconButton(icon:Icon(Icons.open_with) ,
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> Second()));
              }
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Home screen' , style: Theme.of(context).textTheme.headline,),

            // RaisedButton(
            //   onPressed: (){
            //   // Navigator.push(context, MaterialPageRoute(builder: (_)=> Second()));
            //   //   Navigator.pushNamed(context, '/second');
            //     Navigator.pushNamed(context, '/second',arguments: Student(name: 'ALsaeid', age: 21));
            //  } , child: Text('open second'),),
            RaisedButton(
              onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (_)=> Second()));
              //   Navigator.pushNamed(context, '/second');
                Navigator.pushNamed(context, '/second',arguments: Student(name: 'ALsaeid mando', age: 21));
             } , child: Text('open second'),)
          ],
        ),
      ),
    );
  }
}
