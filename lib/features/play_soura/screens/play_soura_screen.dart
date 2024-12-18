import 'package:audio_player_app/features/play_soura/widgets/custom_app_bar_play_soura_screen.dart';
import 'package:audio_player_app/features/play_soura/widgets/custom_botton_controller_play_soura.dart';

import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_soura_details_play_screen.dart';
import '../widgets/custom_timing_widget.dart';
import '../widgets/custom_tools_2_play_soura.dart';
import '../widgets/custom_tools_play_soura.dart';

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
        body: SingleChildScrollView(
          child: Container(
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
                    Spacer(),
                    CustomSouraDetailsPlayScreen(),
                    SizedBox(
                      height: 29,
                    ),
                    CustomBottonControllerPlaySoura(
                      value: 0.6,
                      onChange: (value) {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23.0),
                      child: CustomTimingWidget(),
                    ),
                    CustomToolsPlaySoura(),
                    CustomTools2PlaySoura(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
