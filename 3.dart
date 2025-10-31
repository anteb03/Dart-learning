class Spacecraft {
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    name = this.name;
    launchDate = this.launchDate; 
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

//enums are predefined set of values or instances 
enum PlanetType {terrestrial, gas, ice}

enum Planet{
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.gas, moons: 0, hasRings: false),
  uranus(planetType: PlanetType.ice, moons: 27, hasRings: true),
  neptune(planetType: PlanetType.ice, moons: 14, hasRings: true);
  const Planet({
    required this.planetType,
    required this.moons,
    required this.hasRings,
  });

  final PlanetType planetType;
  final int moons;
  final bool hasRings;

  bool get isGiant =>
    planetType == PlanetType.gas || planetType == PlanetType.ice;
}

//inheritance ili ti ga masljedivanje (subclass)
class Orbiter extends Spacecraft{
  double altitude; 

  //constructor
  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}




//mixins - when i donr want to make it subclass but to reuse it exmple. class 
mixin Piloted{
  int astronauts = 1;
  void describeCrew(){
    print(astronauts);
  }
}

class PilotedCraft  with Piloted { //mixin using with Piloted
  @override
  void describeCrew() {
    print('HAHAHA');
  }
}



//interfaces and abstract classes - I use it when I want to implement 
//methods from class 
//example

abstract class Animal{
  void makeSound();
}

class Dog implements Animal{
  @override
  void makeSound() {
    print("Wau wau");
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print("Mjau mjau");
  }
}

void main(){
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}