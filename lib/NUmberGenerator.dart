
import 'dart:async';

class NumberGenerator
{
  var sc = StreamController<int>() ;
  var counter = 1 ;
  NumberGenerator(){
    Timer.periodic(Duration(seconds: 2), (e){
      sc.sink.add(counter);
      counter ++ ;
    });
  }

  Stream <int> get outPut  => sc.stream;
}