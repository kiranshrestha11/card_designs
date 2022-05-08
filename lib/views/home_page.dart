import 'package:card_designs/calendar/calendar.dart';
import 'package:card_designs/music_notification/music_notification.dart';
import 'package:card_designs/music_player/music_player.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MusicPlayer(),
    );
  }
}
