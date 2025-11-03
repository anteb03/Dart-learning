//class modifiers pt3

interface class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

//can be constructed
Vehicle myVehicle = Vehicle();

//can't be extended
/*class Car extends Vehicle {
  int passengers = 4;
  @override
  void moveForward(int meters) {
    // ...
  }
}*/

//can be implemented
class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}