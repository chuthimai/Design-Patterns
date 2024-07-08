import 'meal.dart';
import 'meal_builder.dart';

void main() {
  MealBuilder mealBuilder = MealBuilder();
  Meal vegMeal = mealBuilder.prepareVegMeal();
  print("Veg Meal");
  vegMeal.showItems();
}