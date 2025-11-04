//isolate pt2

import 'dart:isolate';

void compressImage(List<dynamic> args) {
  String path = args[0];
  SendPort sendPort = args[1];

  // pretend we compress image here
  Future.delayed(Duration(seconds: 2), () {
    sendPort.send("Image at $path compressed!");
  });
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(compressImage, ["image.png", receivePort.sendPort]);

  receivePort.listen((message) {
    print(message);
  });
}
