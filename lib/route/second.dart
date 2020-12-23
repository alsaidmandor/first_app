import 'package:first_app/route/Student.dart';
import 'package:first_app/route/home.dart';
import 'package:first_app/route/main.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {

  String name ;
  int age ;

  Second({this.name, this.age});

  @override
  Widget build(BuildContext context) {

    // Student student = ModalRoute.of(context).settings.arguments ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Second screen' , style: Theme.of(context).textTheme.headline,),
            SizedBox(height: 50,),
            // Text('${student.name}' , style: Theme.of(context).textTheme.headline,),
            // Text('${student.age}'  , style: Theme.of(context).textTheme.headline,),
            Text('${name}' , style: Theme.of(context).textTheme.headline,),
            Text('${age}'  , style: Theme.of(context).textTheme.headline,),

            // RaisedButton(onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
            // } , child: Text('open home'),)



          ],
        ),
      ),
    );
  }
}
