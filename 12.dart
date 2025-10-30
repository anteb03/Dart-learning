import 'dart:math';

String asciiCharType(int char) {
 
  return switch (char) {
    < 32 => 'control',
    == 32 => 'space',
    > 32 && < 48 => 'punctuation',
    >= 48 && <= 57 => 'digit',
    _ => '',
  };
}

void main(){
  //casting
  (num, Object) record = (1, 's');
  var (i as int, s as String) = record;

  String a = asciiCharType(33);
  print(a);

  (int?, int?) position = (2, 3);
  //var (x!, y!) = position;

  var [b, ...rest, c, d] = [1, 2, 3, 4, 5, 6, 7];
  print('$b $rest $c $d');

  var list = [1, 2, 3];
  var [_, two, _] = list;

  var Point(:x, :y) = Point(1, 2);
}