//metadata


//custom

class Todo{
  final String who;
  final String what;
  const Todo(this.who, this.what);
}

void main(){
  //built-in 
  //@Deprecated and @deprecated, override, pragma - hint to compiler what to do

  @pragma('vm:prefer-inline')
  int add(int a, int b) => a + b;

  @Todo('Dash','Implement this function')
  void doSmthng(){
    print("Do it");
  }

}