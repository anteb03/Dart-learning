//class modifiers pt4

final class Vehicle {
  void moveForward(int meters) {
    // ...
  }
}

//can be constructed
Vehicle myVehicle = Vehicle();

//cant be extended
/*class Car extends Vehicle {
  int passengers = 4;
  @override
  void moveForward(int meters) {
    // ...
  }
*/

//cant be implemented
/*class MockVehicle implements Vehicle {
  @override
  void moveForward(int meters) {
    // ...
  }
}
*/


