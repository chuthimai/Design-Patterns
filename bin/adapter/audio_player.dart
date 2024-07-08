import 'data.dart';
import 'interface/media_player.dart';
import 'media_adapter.dart';

class AudioPlayer implements MediaPlayer {
  late MediaAdapter mediaAdapter;

  @override
  void play(Format mediaType, String fileName) {
    if (mediaType == Format.mp3) {
      print("Playing mp3 file. Name: $fileName");
    } else if (mediaType == Format.mp4 || mediaType == Format.vlc) {
      mediaAdapter = MediaAdapter(mediaType);
      mediaAdapter.play(mediaType, fileName);
    } else {
      print("Invalid media. ${mediaType.name} format not supported");
    }
  }
  
}