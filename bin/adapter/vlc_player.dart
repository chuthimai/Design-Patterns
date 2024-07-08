import 'interface/advanced_media_player.dart';

class VlcPlayer implements AdvancedMediaPlayer {
  @override
  void playMp4(String fileName) {
    return;
  }

  @override
  void playVlc(String fileName) {
    print("Playing vlc file. Name: $fileName");
  }
}