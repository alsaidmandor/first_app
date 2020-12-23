
void main ()
{
  // var stu = Student("alsaeid" , 25) ;
  //
  // stu.displayInf() ;

  var tr1 = Teacher.fromJson({'name ' : "alsaeid" , 'address' : "25135"});
  tr1.Info();
}

// class Student
// {
//   // field
//   String name ;
//   int age ;
//   //
//   // Student(this.name, this.age);
//
//   // fub == method
// displayInf ()
// {
//   print("name is $name ====== age is $age");
// }
// }

class Teacher {

  String name ;
  String address ;

  //default
  Teacher(this.name , this.address);
// named constructor
Teacher.fromJson(Map<dynamic,dynamic> json)
{
  this.name = json["name"] ;
  this.address = json["address"] ;
}

    Info()
    {
      print("name is ${this.name} ...........address is  ${this.address}");
    }
}