import 'packing.dart';

abstract class Item {
  String name();
  Packing packing();
  double price();
}