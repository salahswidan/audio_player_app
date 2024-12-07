import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar:
            true, // to make the background color cover the app bar
        appBar: CustomAppBarPlaySouraScreen(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment(0.20, -0.98),
                  end: Alignment(-0.20, 0.98),
                  colors: [
                ColorManagers.kPrimaryColor,
                ColorManagers.kDarkBlueeColor
              ])),
        ));
  }
}
