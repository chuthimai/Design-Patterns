import './interface/item.dart';

class Meal {
  final List<Item> _items = [];

  void addItem(Item item) {
    _items.add(item);
  }

  void showItems() {
    for (var item in _items) {
      print("Item: ${item.name()}");
      print("Packing: ${item.packing().pack()}");
      print("Price: ${item.price().toString()}");
    }
  }

  double getCost() {
    double cost = 0.0;
    for (var item in _items) {
      cost += item.price();
    }
    return cost;
  }
}