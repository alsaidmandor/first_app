import 'package:first_app/NUmberGenerator.dart';

// void main() {
// //   var mySubscription;
// // mySubscription =   getData().map((e) =>e*2 ).listen(
// //       (i) => print(i) ,
// //     onError: (e) => print("there is an error")  ,
// //     cancelOnError: false,
// //     onDone: () => print("Done")
// //   );
//
// var ng = NumberGenerator() ;
// ng.outPut.listen((event) =>print('element $event'));
// }

// stream
Stream<int> getData() async*{
  // return Stream.periodic(Duration(seconds: 3), (i) => i);
  for(int i = 0 ; i < 10 ; i++)
    {
      await Future.delayed(Duration(seconds: 1)) ;
      yield i ;
    }
}