class StreamGenerator {
  static Stream<int> getMyNumbers() async* {
    for (int i = 1; i < 100; i++) {
      yield i;
      await Future.delayed(
        Duration(seconds: 1),
      );
    }
  }
}
