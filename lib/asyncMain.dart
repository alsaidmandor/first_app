
import 'dart:async';

void main() async
{
  // print(showUserPosts());
  // print("Before fetch user post ");
  // fetchUserPosts() ;
  // print("after fetch user post ");

  var data = getData();
  // Stream s
  // 1- single subscription stream
  data.listen((event) => print(event)) ;
  // 2- Broadcast streams
  // var data = getData().asBroadcastStream();
  // data.listen((event) => print(event)) ;
  // data.listen((event) => print(event)) ;

}

String showUserPosts()
{
  var post =  fetchUserPosts() ;
  return "Show all ${post}" ;
}

Future<void>fetchUserPosts()
{
      Future.delayed(Duration(seconds: 30) , () => print("User post !")) ;
      // Future.delayed(Duration(seconds: 30) , () =>throw Exception()) ;

}

// stream
Stream<int> getData ()
{
  return Stream.periodic(Duration(seconds: 3), (int i)=> i ) ;
}


// extension method
extension on String {
  int convert()
  {
    return int.parse(this);
  }
}