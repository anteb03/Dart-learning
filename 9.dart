//generics


void main(){
  List<String> a = []; //if i want only to have list of strings

  var pages = <String, String>{ //for key-value we use generic
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machines',};

}


//T is the stand-in type
class Foo<T extends SomeBaseClass> {
  String toString() => "Instance of 'Foo<$T>'";
}

class SomeBaseClass {
 
}