
List <int> fun(){
  return <int>[1,2,3];
}

(String, int) fun2(){
  return ("Bhaha", 1);
}

sealed class Shape{} //sealed means only in that doc
//outside of this is not accessible 

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
  Square(length: var l) => l * l,
  Circle(radius: var r) => 3.14 * r * r,
};

void main(){
  //destructures
  var numList = [1,2,3];
  var [a,b,c] = numList;
  print(a+b+c);

  var (aaa, [bb, cc]) = ('str', [1, 2]);
  print(aaa + " $bb $cc");

  var (aa, dd) = ('left', 'right');
  (dd, aa) = (aa, dd); // Swap
  print('$aa $dd');

  var info = fun();
  var i1 = info.first;
  var i2 = info.last;
  var i3 = info.elementAt(1);
  print(i3);

  var info2 = fun2();
  var l = info2.$1;
  var j = info2.$2;

  print("$l $j");

  //can go shorter version
  //var (l, j) = fun2();

  var data = {'user': ['Lily', 13],};
  var {'user': [name, age]} = data;
  print(data);

  
}

