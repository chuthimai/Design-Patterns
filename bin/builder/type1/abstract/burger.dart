import '../interface/item.dart';
import '../interface/packing.dart';
import '../wrapper.dart';

abstract class Burger implements Item {
  @override
  Packing packing() {
    return Wrapper();
  }

  @override
  double price();
}