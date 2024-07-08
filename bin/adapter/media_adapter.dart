import 'data.dart';
import 'interface/advanced_media_player.dart';
import 'interface/media_player.dart';
import 'mp4_player.dart';
import 'vlc_player.dart';

class MediaAdapter implements MediaPlayer {

  late AdvancedMediaPlayer advancedMediaPlayer;

  MediaAdapter(Format mediaType) {
    if (mediaType == Format.mp4) advancedMediaPlayer = Mp4Player();
    if (mediaType == Format.vlc) advancedMediaPlayer = VlcPlayer();
  }

  @override
  void play(Format mediaType, String fileName) {
    if (mediaType == Format.mp4) advancedMediaPlayer.playMp4(fileName);
    if (mediaType == Format.vlc) advancedMediaPlayer.playVlc(fileName);
  }

}