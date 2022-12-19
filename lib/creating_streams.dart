main() async {
  //1 async*

  // Stream<int> myNumberCreator() async*{
  //   for(int i=1;i<10;i++){
  //     await Future.delayed(const Duration(seconds: 1));
  //     yield i;
  //   }
  // }
  //
  // Stream<int> myStream=myNumberCreator();
  //
  // myStream=myStream.asBroadcastStream();
  //
  // myStream.listen((event) {
  //   print(event);
  // });
  //
  // myStream.listen((event) {
  //   print(event);
  // });

  //Transforming Streams

  Stream<int> myNumberCreator() async* {
    for (int i = 1; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  Stream<int> myStream = myNumberCreator();

  Stream<int> newStream = myStream.map((event) => event * event);

  Stream<int> secondStream = myStream.where((event) => event % 2 == 0)
  .expand((element) => [element+1,element+2,element+3]);

  // newStream.listen((event) {
  //   print(event);
  // });

  secondStream.listen((event) {
    print(event);
  });
}
