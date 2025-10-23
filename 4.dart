//async
import '3.dart';

const oneSecond = Duration(seconds: 1);

Future <void> printWithDelay (String message) async {
  await Future.delayed(oneSecond);
  print(message);
  await Future.delayed(oneSecond);
  print(message);
  await Future.delayed(oneSecond);
  print(message);
  await Future.delayed(oneSecond);
  print(message);
  await Future.delayed(oneSecond);
  print(message);
}

//or
Future <void> printWithDelay1 (String message){
  return Future.delayed(oneSecond * 4).then((_){
    print(message);
  });
}

//iterable when you can go element by element in for loop with obj in objects 
Stream <String> report(Spacecraft craft, Iterable<String> objects) async*{

}
//Stream Useful for things like UI events, where many listeners may want updates

//diff between async - use in future and asnyc* - use in stream



void main(){
  printWithDelay("Dont be bitch");
  printWithDelay1("Dont be bitch");
}