import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../../splash/widgets/custom_logo_splash_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Text(
              "data",
              style: TextStyle(
                  fontFamily: "main", color: Colors.amber, fontSize: 30),
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment(0.20, -0.98),
                end: Alignment(-0.20, 0.98),
                colors: [
                  ColorManagers.kPrimaryColor,
                  ColorManagers.kSecondaryColor
                ]),
          )),
    );
  }
}
