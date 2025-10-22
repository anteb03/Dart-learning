late String desc; //outside functions 

void main(){
  final lalo; 
  //or
  final String nick;
  // only using if I wont do any changes with it 
  //or const
  //instance variables can be final but cant be const
  //i cant change const or final
  desc = 'Fate'; 
  print(desc);

  //const is not only for declaring constant variables 
  //you can create constant values
  var foo = const [];
  foo = [1,2,3,"a"];
  print(foo);

  //now you cant change lets say first element foo[0]


 //Although a final object cannot be modified,
 //its fields can be changed. 
 //In comparison, a const object and its fields 
 //cannot be changed: they're immutable.

  //wildcard variables are with _
  //idc abt this bcs i wont use it but if i dont care
  //whats in some var then i will use it 

  var _ = 1; 
  int _ = 2;

  //for (var _ in list){} 
  

}