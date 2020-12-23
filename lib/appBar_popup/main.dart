import 'package:first_app/appBar_popup/choice.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var choices = <Choice>[
    Choice(title: 'Bicycle', icon: Icons.directions_bike),
    Choice(title: 'Car', icon: Icons.directions_car),
    Choice(title: 'Bus', icon: Icons.directions_bus),
    Choice(title: 'Walk', icon: Icons.directions_walk),
    Choice(title: 'Boat', icon: Icons.directions_boat),
    Choice(title: 'Train', icon: Icons.directions_train),
  ];

  int selected= 0 ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        drawer: Drawer(
         child: ListView(
           children: [
             DrawerHeader()
           ],
         ),
        ),
        appBar: AppBar(
          title: Text('popupMenu'),
          actions: [
            IconButton(
                icon: Icon(choices[0].icon),
                onPressed: (){
                  setState(() {


                    selected=0 ;
                  });
                }
            ),
            IconButton(
                icon: Icon(choices[2].icon),
                onPressed: (){}
            ),
            PopupMenuButton(
                itemBuilder:(context)
                    {
                      return choices.skip(3).map((e) => 
                      PopupMenuItem(value: e,child: Text(e.title))
                      ).toList();
                    }
            )
          ],
        ),
        body: Center(
          child: Icon(choices[selected].icon),
        ),
      ),
    );
  }
}
