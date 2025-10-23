import '3.dart';

String playerName(String? name) => name ?? 'Guest'; //same as 
//String playerName(String? name) => name != null ? name : 'Guest';

void main(){
  //assert(5 ~/ 2 == 1 );
  assert(5 ~/ 2 == 2 );
  assert(5 is! String);
  Orbiter s = Orbiter('bhasaf', DateTime(1990,2,3), 19.29); 
  (s as Spacecraft).name = 'BAHAH SDJ'; //cast can be from subclass to main class
  print(s.name); 

  int a = 3;
  // ignore: dead_code
  a ??= 2;
  print(a); //it will print 3 bcs a is not null, otherwise if we had int? a then print will be 2

  int  x = 8;  // 1000 u binarnom

  print(x << 2); // 1000 << 2 = 100000 → 32
  print(x >> 2); // 1000 >> 2 = 0010 → 2

  print(a ?? x); //if a is not null then it returns its value, otherwise returns value of x 

  String da = playerName(null);
  print(da);

  da = playerName("bahah");
  print(da);

  //will work if i had empty constructor but mine had 3 arguments
  //var oo = Orbiter()..name = "  Baahha"..launchDate = DateTime(1990)..altitude = 19; 
  //also nesting will work 
  /*final addressBook =
      (AddressBookBuilder()
            ..name = 'jenny'
            ..email = 'jenny@example.com'
            ..phone =
                (PhoneNumberBuilder()
                      ..number = '415-555-0100'
                      ..label = 'home')
                    .build())
          .build();
  */
}

