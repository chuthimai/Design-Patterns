import '../data.dart';

abstract class MediaPlayer {
  void play(Format mediaType, String fileName);
}