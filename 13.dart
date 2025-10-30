bool topLevel = true;

Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main(){
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  for (var c in message.toString().split("")){
    print(c);
  }

  const list = ['apples', 'bananas', 'oranges'];

  var uppercaseList = list.map((item) {
    return item.toUpperCase();
  }).toList(); //can go with =>

  for (var item in uppercaseList) {
    print('$item: ${item.length}');
  } // can go with uppercaseList.forEach()....


  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() { //The nestedFunction() method can use variables from every level
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }

  //lexical closure
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);


  //tear-off
  var charCodes = [ 97, 114, 116, 68];

  charCodes.forEach(print); //function
  charCodes.forEach(message.write); //method


  //generators - when I need lazy producing a sequence of values

  Iterable<int> naturalsTo(int n) sync*{ //synchronous generator- return Iterable
    int k = 0;
    while (k < n) yield k++;
  }
  

  Stream<int> asynchronousNaturalsTo(int n) async* { //asynchronous generator- returns Stream
    int k = 0;
    while (k < n) yield k++;
  }
  

  print(naturalsTo(6));
  asynchronousNaturalsTo(6).listen((value) {
    print(value);
  });

  

}