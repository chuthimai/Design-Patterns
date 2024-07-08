import '../subject.dart';

abstract class Observer {
  late Subject subject;
  void update();
}