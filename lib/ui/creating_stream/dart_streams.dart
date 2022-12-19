import 'dart:async';
import 'dart:io';

void main() async {
//   print("Hello");
//   late StreamSubscription<List<int>> subscription1;
//   late StreamSubscription<List<int>> subscription2;
//   File file = File("assets/test.txt");
//
//   Stream<List<int>> contentStream = file.openRead();//List<int>
//
// //usul 1
//   subscription1 = contentStream.listen(
//     (event) {
//       print(event.length);
//     },
//     onError: (err) {},
//     onDone: () {},
//     cancelOnError: true,
//   )
//     ..onError((err) {
//       print("ERRRrror");
//     })
//     ..onDone(() {
//       print("The end");
//     });
//
//   contentStream.listen((event) { });
//
//
  Stream<int> countStream(int to) async* {
    for (int i = 1; i <= to; i++) {
      yield i;
    }
  }

  Stream<int> numberStream = countStream(10);

  numberStream.listen((event) {
    print(event);
  });
  numberStream.listen((event) { });


//usul 2
  // await for (var data in contentStream) {
  //   print(data.length);
  // }
}
