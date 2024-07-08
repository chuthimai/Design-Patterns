import './abstract/cold_drink.dart';

class Coke extends ColdDink {
  @override
  String name() {
    return "Coke";
  }

  @override
  double price() {
    return 30.0;
  }

}