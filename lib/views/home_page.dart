import 'package:card_designs/calendar/calendar.dart';
import 'package:card_designs/circle_progress/circle_page.dart';
import 'package:card_designs/facebook_post/background.dart';
import 'package:card_designs/gradient_text/gradient_text.dart';
import 'package:card_designs/music_notification/music_notification.dart';
import 'package:card_designs/music_player/music_player.dart';
import 'package:card_designs/percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBACAD9),
      body: Center(
        child: Background(),
      ),
    );
  }
}
