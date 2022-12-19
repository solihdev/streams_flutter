import 'dart:async';

main() async {
  //Creating streams
  //1 async*
  //
  // Stream<int> myNumberCreator() async* {
  //   for (int i = 1; i < 10; i++) {
  //     yield i;
  //     await Future.delayed(Duration(seconds: 1));
  //   }
  // }
  //
  // Stream<int> myStream = myNumberCreator();
  //
  // myStream = myStream.asBroadcastStream();
  //
  // myStream.listen((event) {
  //   print(event);
  // });
  //
  // myStream.listen((event) {
  //   print(event);
  // });

  //2 Transforming streams

  // Stream<int> myNumberCreator() async* {
  //   for (int i = 1; i < 10; i++) {
  //     yield i;
  //     await Future.delayed(Duration(seconds: 1));
  //   }
  // }
  //
  // Stream<int> myStream = myNumberCreator();
  // Stream<int> newStream1 = myStream.map((event) => event * event);
  // Stream<int> newStream2 = myStream
  //     .where((result) => result % 2 == 0)
  //     .expand((element) => [element + 1, element + 2, element + 3])
  //     .take(5);
  //
  // newStream2.listen((event) {
  //   print(event);
  // });

  //3 By Stream Controller

  StreamController<int> streamController = StreamController<int>();
  int k = 0;

  Stream<int> myNumberCreator() async* {
    for (int i = 1; i < 10; i++) {
      yield i;
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  streamController.addStream(myNumberCreator());

  streamController.sink.add(k);

  // var st = streamController.stream.asBroadcastStream();
  // late StreamSubscription subscription;

  streamController.stream.listen((event) async {
    print(event);
  });


  // st.listen((event) {
  //   print(event);
  // });
}
