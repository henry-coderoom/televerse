import 'dart:io';
import 'package:televerse/televerse.dart';

/// This is a general bot that tests different features of the library.
/// On investigation about #135
void main() async {
  /// Creates the bot instance
  final bot = Bot(
    Platform.environment["BOT_TOKEN"]!,
  );

  final video = InputFile.fromFile(File("./example/assets/video.mp4"));
  bot.onText((ctx) async {
    print('sending video');
    await ctx.replyWithVideo(video);
  });

  bot.start();
}
