import 'dart:async';
import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  CounterViewModel() {
    listenName();
  }
  //
  // int count = 0;
  // late StreamSubscription subscription;
  //
  // listenNumber() {
  //   Stream<int> stream = StreamGenerator.getMyNumbers();
  //
  //   subscription = stream.listen((event) {
  //     count = event;
  //     notifyListeners();
  //   });
  // }
  //
  // pauseCounterStream() => subscription.pause();
  //
  // resumeCounterStream() => subscription.resume();
  //
  // cancelCounterStream() => subscription.cancel();

  // ------------ ----------------------- ----- With Stream Controller

  String name="Empty";

  StreamController<String> streamController=StreamController<String>();

  addToStream(String name)=>streamController.sink.add(name);

  listenName() {
      Stream<String> stream = streamController.stream;
      stream.listen((event) {
        name = event;
        notifyListeners();
      });
    }

}
