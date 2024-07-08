import 'dart:math';

import 'attack_behavior.dart';
import 'data.dart';
import 'defence_behavior.dart';
import 'interface/behavior.dart';

abstract class GameObject {
  late int strength; // suc manh
  late Action action;
  late Behavior behavior;
  List<Behavior> behaviors = [AttackBehavior(), DefenceBehavior()];

  void operator() {
    strength = Random().nextInt(10);
    update();
  }

  void update();

  String getName();
}