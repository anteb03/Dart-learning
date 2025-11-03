//class modifiers pt1

abstract class Vehicle { // abstact- to define a class that doesn't require a full, concrete implementation of its entire interface
  void moveForward(int meters);
}
//Abstract classes cannot be constructed from any library, 
//whether its own or an outside library.
//Vehicle myVehicle = Vehicle(); //try it

//but abstract classes can be extended and implemented

class Car extends Vehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    // ...
  }
}


