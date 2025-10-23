//records

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


}