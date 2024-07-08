import './abstract/burger.dart';

class VegBurger extends Burger {
  @override
  String name() {
    return "Veg Burger";
  }

  @override
  double price() {
    return 25.0;
  }

}