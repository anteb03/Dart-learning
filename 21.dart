//extensions

extension NumberParsing on String{
  int parseInt(){
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

//if we have lets say 2 imported files with same methods, you can use hide to use one properly bcs it can make a conflict
//otherwise you can use extensionName().methodName();
//or prefix as 

extension MyFancyList<T> on List<T> { //generic 
  int get doubleLength => length * 2;
  List<T> operator -() => reversed.toList();
  List<List<T>> split(int at) => [sublist(0, at), sublist(at)];
}

void main(){
  print('42'.parseInt());
}

