import '11.dart' as lib2;
import '3.dart' show Spacecraft hide Planet; //parts of libraries I want to use

//lazy loading of library with deferred as
import '4.dart' deferred as hello;

Future<void> greet() async{
  await hello.loadLibrary();
  hello.printWithDelay("Hello");
}

void main(){
  Spacecraft s = Spacecraft("", DateTime(1999));
  
  lib2.Circle el = lib2.Circle(23); //with specifying prefix, but i will use it if i have for 
  //examp. name of 2 same classes in tvo different files
  
  greet();


}