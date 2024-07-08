import 'interface/observer.dart';
import 'subject.dart';

class OctalObserver extends Observer {
  @override
  void update() {
    print("Octal String: ${subject.state.toRadixString(8)}");
  }

  OctalObserver(Subject subject) {
    this.subject = subject;
    this.subject.attach(this);
  }
}