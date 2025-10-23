
void main(){
  var one = int.parse('1');
  print(one);
  assert(one ==1);

  var two_two = double.parse('2.22');
  print(two_two);
  assert(two_two == 2.22);

  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  var s1 =
    'String '
    'concatenation'
    " works even over line breaks.";
  assert(s1 =='String concatenation works even over ''line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  //multilining string with ''' or """
}