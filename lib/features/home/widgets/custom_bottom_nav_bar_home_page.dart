
import 'package:flutter/material.dart';

import '../../../controller/home_controller.dart';

class CustomBottomNavBarHomePage extends StatelessWidget {
  const CustomBottomNavBarHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //! to show more tha 3 icon
        backgroundColor: Color(0xff261F44),
        items: [
          for (int i = 0; i < HomeController.HomeIcon.length; i++)
            BottomNavigationBarItem(
                icon: HomeController.HomeIcon[i], label: '')
        ]);
  }
}