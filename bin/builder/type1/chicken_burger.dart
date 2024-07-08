import 'abstract/burger.dart';

class ChickenBurger extends Burger{
  @override
  String name() {
    return "Chicken Burger";
  }

  @override
  double price() {
    return 50.5;
  }

}