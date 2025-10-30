//constructors

class Point {
  double x,y;
  int _age = 18; //private field is marked with _ before the name of variable, cannot be accessed from outside

  //generative constructor
  Point(this.x, this.y);

  //named constructor
  Point.origin() : x = 0, y = 0;

  //redirecting constructor
  Point.alongXAxis(double x) : this(x,0);

}


class Point2{
  late double x,y;

  //default constructor but you dont need to write it
  Point2();

  Point2.create({required double xx, required double yy}) : x = xx, y = yy;
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;

  //constant constructor
  const ImmutablePoint(this.x, this.y);
}


class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
  
  Vector2d.named({required this.x, required this.y});
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);

  // Vector3d.yzPlane({required double y, required this.z}) : super.named(x: 0, y: y);
  Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
}

void main(){

}