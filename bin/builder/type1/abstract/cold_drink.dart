import '../bottle.dart';
import '../interface/item.dart';
import '../interface/packing.dart';

abstract class ColdDink implements Item {
  @override
  Packing packing() {
    return Bottle();
  }

  @override
  double price();

}