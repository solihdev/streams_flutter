import 'dart:async';

main() async {

  // 1-mashq

  // Stream<int> myNumberCreator() async* {
  //   for (int i = 1; i < 30; i++) {
  //     yield i;
  //   }
  // }
  //
  // Stream<int> myStream = myNumberCreator();
  // Stream<int> stream = myStream
  //     .where((result) => result % 2 == 1);
  //
  // stream.listen((event) {
  //   print(event);
  // });

  // 2-mashq

  // Stream<int> myNumberCreator() async* {
  //   for (int i = 2; i < 100; i++) {
  //     yield i;
  //     await Future.delayed(const Duration(seconds: 1));
  //   }
  // }
  //
  // Stream<int> myStream = myNumberCreator();
  // Stream<int> stream = myStream
  //     .where((result) => result % 2 == 0);
  //
  // //1 -variant
  // // stream.listen((event) {
  // //   print(event);
  // // });
  //
  // //2 -variant
  // // await for (var data in stream) {
  // //   print(data);
  // // }

  //3-mashq

  StreamController<String> streamController = StreamController<String>();
  List<String> list=["Odilbek","Sardor","Begijon","Abdurauf"];

  for(int i=0;i<list.length;i++){
    streamController.add(list[i]);
    streamController.sink.add(list[i]);
  }

  // var st = streamController.stream.asBroadcastStream();
  // late StreamSubscription subscription;

  streamController.stream.listen((event) async {
    print(event);
  });
}
