//isolates pt3

import 'dart:isolate';

void sumNumbers(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 500000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(sumNumbers, receivePort.sendPort);

  receivePort.listen((value) {
    print("Sum = $value");
  });
}
