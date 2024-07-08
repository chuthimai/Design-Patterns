import 'chicken_burger.dart';
import 'coke.dart';
import 'meal.dart';
import 'pepsi.dart';
import 'veg_burger.dart';

class MealBuilder {
  Meal prepareVegMeal() {
    Meal meal = Meal();
    meal.addItem(VegBurger());
    meal.addItem(Coke());
    return meal;
  }

  Meal prepareNonVegMeal() {
    Meal meal = Meal();
    meal.addItem(ChickenBurger());
    meal.addItem(Pepsi());
    return meal;
  }
}