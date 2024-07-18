import 'dart:collection';

import 'ball.dart';

class BallPool {
  final Queue<Ball> balls = Queue<Ball>.from([Ball(1), Ball(2), Ball(3)]);

  Ball? provideBall() {
    return balls.isEmpty ? null : balls.removeFirst();
  }

  void offerBall(Ball ball) {
    balls.add(ball);
  }
}