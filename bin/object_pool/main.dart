import 'ball_pool.dart';
import 'player.dart';

Future<void> main() async {
  final List<Player> players = [];
  players.add(Player("Player-1"));
  players.add(Player("Player-2"));
  players.add(Player("Player-3"));

  final BallPool ballPool = BallPool();
  var ball0 = ballPool.provideBall();
  players[0].play(ball0);
  var ball1 = ballPool.provideBall();
  players[0].play(ball1);
  var ball2 = ballPool.provideBall();
  players[1].play(ball2);
  var ball3 = ballPool.provideBall();
  players[2].play(ball3);

  ballPool.offerBall(ball1!); // tra lai bong vao ro

  var ball4 = ballPool.provideBall();
  players[2].play(ball4);
}
