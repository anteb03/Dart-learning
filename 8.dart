//lists, maps

void main(){
  var list = [1,2,3];
  //list.add('a'); you cant do this
  list.add(4);

  var names = <String>{};
  names.add('fluorine');
  print(names);

// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.

  var gifts = { //this is Map<String, String>
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings',
  };
  gifts['fourth'] = 'calling birds';
  // we can go with Map<String, String> = {...};
  //if there is no key, then returns NULL
  
  var a = [1, 2, null, 4];
  var items = [0, ...a, 5]; //spreading
  

  int? absentValue = null;
  int? presentValue = 3;
  var items2 = [
  1,
  ?absentValue, //wont insert value bcs of null-aware
  ?presentValue,
  absentValue,
  5,]; // [1, 3, null, 5]

  var itemsD = {?absentValue: presentValue};
  print(itemsD); //if there is null-aware and value is null then its not element of map

  //i can use the if and for and nesting  

  var aa = 'apple';
  var b = 'orange';
  var c = 'mango';
  var items3 = [
    0,
    if (aa == 'apple') 1 else if (aa case 'mango') 10,
    if (b case 'pear') 2 else if (b == 'mango') 20,
    if (c case 'apple') 3 else if (c case 'mango') 30,
    4,
  ];
  print(items3);


  var items4 = [1, for (var x = 5; x > 2; x--) x, 7]; 
  print(items4);

  var numbers = [1, 2, 3, 4, 5, 6, 7];
  var items5 = [
  0,
  for (var n in numbers)
    if (n.isEven) n,
  8];
  print(items5);



  var nestItems = true;
  var ys = [1, 2, 3, 4];
  var items6 = [
  if (nestItems) ...[ //spreading
    for (var x = 0; x < 3; x++)
      for (var y in ys)
        if (x < y) x + y * 10,
  ]];
  print(items6);
}