import 'dart:math';

class P {
  double? x; //initially null
  late double? y = this.x; 
  double z = 0; //initially 0

  P(this.x, this.y);

  static double distanceBetween(Point a, Point b) { //static method - they dont operate on instance, dont have access to this,
  //but they have access to static variables, can be called on class lets say Point.distancebetween()
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Queue{
  static const initialCapacity = 16; //class-level constant, not smthng that should be duplicated for every object
}


void main(){
  var p = Point(2, 2);
  var a = p?.y; //we use ?. to avoid an exception when the operand is null


  const pointAndLine = {
  'point': [Point(0, 0)],
  'line': [Point(1, 10), Point(-2, 11)],};

  
}