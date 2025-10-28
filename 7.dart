//records

//you can do it like this
typedef ButtonItem = ({String label, /*Icon icon*/ void Function()? onPressed});
  final List<ButtonItem> buttons = [
  // ...
];

void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
  
  (int, int) r = (1,2);
  print(r.$1);

  //(r as (String, int)) = ('Asd',1); this cast wont work
  //only if r is declared as dynamic 

  //can do aswell with declaration variable
  ({int a, bool b}) r2;
  r2 = (a:123, b:true);
  
  //interesting this wont be the same TYPE: recordAB != recordXY
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);

  //but this will be the same TYPE: 
  (int a, int b) recordab = (1, 2);
  (int x, int y) recordxy = (3, 4);

  (num, Object) pair = (42, 'a');
  var first = pair.$1; // Static type `num`, runtime type `int`.
  var second = pair.$2; // Static type `Object`, runtime type `String`.
  

  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = <String, dynamic>{'name': 'Dash', 'age': 10, 'color': 'blue'};

  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);

  //or
  //({String name, int age}) userInfo(Map<String, dynamic> json)...
  //then Destructures using a record pattern with named fields:
  //final (:name, :age) = userInfo(json);

  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
  */
  

  //holding data, immediately available without needing to declare any new classes
  final buttons = [
  (
    label: "Button I",
    //icon: const Icon(Icons.upload_file),
    onPressed: () => print("Action -> Button I"),
  ),
  (
    label: "Button II",
    //icon: const Icon(Icons.info),
    onPressed: () => print("Action -> Button II"),
  )];
}