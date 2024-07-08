import 'interface/observer.dart';

class Subject {
  final List<Observer> _observers = [];
  int? _state;

  int get state => _state!;

  set state(int value) {
    _state = value;
    notifyAllObservers();
  }

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  void notifyAllObservers() {
    for (Observer observer in _observers) {
      observer.update();
    }
  }
}