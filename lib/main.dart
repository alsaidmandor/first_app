import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

/*
class MyApp extends StatelessWidget {
  // state == field
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter colors , fonts'),
          backgroundColor: Colors.orange[700],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.orange[700],
          onPressed: () {
            print('you clicked me');
          },
        ),
        body: Center(
         child: Material(
           shape: BeveledRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(20)) ,
             side: BorderSide(
               color: Colors.red ,
               width: 3
             )
           ),
           color: Colors.yellow,
           child: Container(
             width: 300,
             height: 300,
           ),
         ),
          )
      ),
    );
  }
}
*/

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // state == field
  int counter= 0 ;

  List<String> courses = ['Dart' , 'Java' , 'Kotlin' , 'Android' , 'flutter', 'C++'] ;
  String selectedCourses = 'Dart' ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text('result is => $counter', style: TextStyle(fontSize: 22),) ,
            // Checkbox(value: false, onChanged: (value)
            // {
            //   setState(() {
            //     counter++ ;
            //     print('counter is  => $counter');
            //   });
            //
            // })
            DropdownButton(
                items: courses.map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e) ,

                )) .toList(),
              value: selectedCourses,
                onChanged: (value)
                {
                  setState(() {
                    selectedCourses = value;
                  });
                },

            )
          ],
        ),
      ),
    );
  }
}
