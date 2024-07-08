import 'binary_observer.dart';
import 'hexa_observer.dart';
import 'octal_observer.dart';
import 'subject.dart';

void main() {
  Subject subject = Subject();
  BinaryObserver(subject);
  OctalObserver(subject);
  HexaObserver(subject);

  subject.state = 10;
  print("---------");
  subject.state = 122;
}