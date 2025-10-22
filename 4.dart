//async
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


void main(){
  printWithDelay("Dont be bitch");
  printWithDelay1("Dont be bitch");
}