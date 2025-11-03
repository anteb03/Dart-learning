//extension types - defining new type based on existing type but with more new rules and methods

extension type E(int i) { //unamed constructor
  E.n(this.i); //named constructor
  E.m(int j, String foo) : i = j + foo.length; //named constructor
}

extension type A._(int it){
  A(): this._(42);
  A.otherName(this.it);
}

extension type Email(String value) {
  bool get isValid => value.contains('@') && value.contains('.');
}



void main() {
  E(4); 
  E.n(3); 
  E.m(5, "Hello!"); 

  A();
  A._(2);
  A.otherName(3);

  Email mail = Email("test@gmail.com");
  print(mail.isValid); 
}