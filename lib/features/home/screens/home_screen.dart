import 'package:audio_player_app/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_bottom_nav_bar_home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeController.HomePages[index],
      bottomNavigationBar: CustomBottomNavBarHomePage(
        index: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}
