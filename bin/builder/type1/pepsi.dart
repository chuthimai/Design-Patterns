import './abstract/cold_drink.dart';

class Pepsi extends ColdDink {
  @override
  String name() {
    return "Pepsi";
  }

  @override
  double price() {
    return 35.0;
  }

}