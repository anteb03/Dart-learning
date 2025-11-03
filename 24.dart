//class modifiers pt2

base class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

//can be constructed
Vehicle myVehicle = Vehicle();

//can be extended
base class Car extends Vehicle {
  int passengers = 4;
  //
}

//can't be implemented
/*base class MockVehicle implements Vehicle {
  @override
  void moveForward() {
  }
}
*/