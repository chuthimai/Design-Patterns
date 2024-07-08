import 'interface/observer.dart';
import 'subject.dart';

class HexaObserver extends Observer {
  @override
  void update() {
    print("Hex String: ${subject.state.toRadixString(16)}");
  }

  HexaObserver(Subject subject) {
    this.subject = subject;
    this.subject.attach(this);
  }
}