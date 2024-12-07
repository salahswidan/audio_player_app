import 'package:flutter/material.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_recently_player_list_view.dart';
import '../widgets/custom_text_field_home_page.dart';
import '../widgets/custom_title_search_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(0.20, -0.98),
              end: Alignment(-0.20, 0.98),
              colors: [
            ColorManagers.kPrimaryColor,
            ColorManagers.kDarkBlueeColor
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFieldHomePage(),
          CustomTitleSearchHomePage(
            title: "Recently Played",
          ),
          SizedBox(
            height: 22,
          ),
          CustomRecentlyPlayerListView(
            readerName: "Adeel",
            souraName: "Al-Baqarah",
          ),
          CustomTitleSearchHomePage(
            title: "Recently Sourahs",
          ),
        ],
      ),
    );
  }
}
