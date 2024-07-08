import 'interface/observer.dart';
import 'subject.dart';

class BinaryObserver extends Observer{
  @override
  void update() {
    print("Binary String: ${subject.state.toRadixString(2)}");
  }

  BinaryObserver(Subject subject) {
    this.subject = subject;
    this.subject.attach(this);
  }
}