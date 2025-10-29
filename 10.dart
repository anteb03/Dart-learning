class Animal {
  void chase(covariant Animal a) { //if i want to tell the analyzer that im doin it itentionaly
     //
  }
}

class Dog extends Animal{
  @override
  void chase(Animal a){
   if (a is Cat) {
      print("I need to catch that cat");
    } else {
      print("I'm chasing something...");
    }
  }
}

class Husky extends Dog{
  
}

class Cat extends Animal{
}

void main(){
    List<dynamic> bar = <dynamic>[Dog(), Cat()];
    Map<Dog, Cat> bar2 = <Dog, Cat>{Dog():Cat()};

    //List<Cat> foo = <dynamic>[Dog()]; - never do this bcs its not 
    List<Animal> dogs = <Dog>[Dog(), Husky()]; //cin list of dogs can go Husky 
    //but problem it breaks type safety bcs the superclas may provide a type of Cat with diff behavior

    var dogs2 = <Dog>[Dog()]; //alternative

    var x = 3; //x is inferred as int
    //x = 4.0; - error
    print(x);

    num y = 3; 
    y = 4.08;
    print(y);
}