import 'interface/advanced_media_player.dart';

class Mp4Player implements AdvancedMediaPlayer {
  @override
  void playMp4(String fileName) {
    print("Playing mp4 file. Name: $fileName");
  }

  @override
  void playVlc(String fileName) {
    return;
  }

}