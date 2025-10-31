import 'dart:math';

class Point {
  final double x;
  final double y;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }

  
}

class Rectangle{
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left + width; //getter - reading object property
  set right(double value) => left = value - width; //setter - writing object property
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

abstract class Doer{
  void doSmthng();
}


class EffectiveDoer extends Doer{
  void doSmthng(){
    
  }
}

class TV{
  void Display(){}
  void _activateIR(){}
  void turnOn(){
      Display();
     _activateIR();
  }
}

class SmartTV extends TV{ //subclass with extends
  void turnOn(){
    super.turnOn(); // refering to superclass's method, we are not overriding it
    //
  }
}

//if we override it (changing smthng in method) it must:
//1. same return type, same type of function
//2. parameters types same and the same number of positional parameters 

class OldTV extends TV{
  void pressTheButton(){}
  void activateDisplay(){}
  @override
  void turnOn() {
   pressTheButton();
   activateDisplay();
  }
}



void main(){

}