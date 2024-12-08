import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_botton_controller_play_soura.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_soura_details_play_screen.dart';

class PlayMusicScreen extends StatelessWidget {
  const PlayMusicScreen({
    super.key,
  });
  //final SouraModelsouraModel;

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
          child: SafeArea(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 124,
                  ),
                  CustomSouraDetailsPlayScreen(),
                  SizedBox(
                    height: 28,
                  ),
                  CustomBottonControllerPlaySoura(),
                ],
              ),
            ),
          ),
        ));
  }
}
