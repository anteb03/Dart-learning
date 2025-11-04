//Synchronous Programming - Tasks run one after another, program waits until the current task is finished before starting the next one.
//sometimes its bad bcs whole program pauses and becomes blocked
//so we use Asynchronous Programming - Program doesn’t wait for a slow task to finish, it starts the task and can do other things meanwhile, instead of freezing, it continues runnning

//Future - represents a single value that will be available in future: fetching data from net, database queries...
//Stream - giving multiple values over time: real-time chat messages, live location updates...

//Isolates - do not share variables or memory
//good thing with them is that they allow you to run heavy work in parallel, without blocking UI

import 'dart:isolate';

void heavyTask(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 500000000; i++) {
    sum += i;
  }
  sendPort.send(sum);
}

void main() async {
  final receivePort = ReceivePort();

  await Isolate.spawn(heavyTask, receivePort.sendPort);

  receivePort.listen((message) {
    print("Result: $message");
  });
}