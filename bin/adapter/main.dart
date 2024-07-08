import 'audio_player.dart';
import 'data.dart';

void main() {
  AudioPlayer audioPlayer = AudioPlayer();
  audioPlayer.play(Format.mp4, "helloVN.mp4");
  audioPlayer.play(Format.mp3, "beyond the horizon.mp3");
  audioPlayer.play(Format.avi, "mind me.avi");
}