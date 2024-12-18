import 'package:audio_player_app/controller/home_page_controlller.dart';
import 'package:audio_player_app/core/resourses/constants_value.dart';
import 'package:audio_player_app/features/main_home/widgets/custom_recently_sourahs_card.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../core/resourses/color_managers.dart';
import '../widgets/custom_search_details.dart';
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
      child: SingleChildScrollView(
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
            CustomSearchDetails(
              onTap: () {
                HomePageControlller.naviagtorToPlaySouraScreen(context);
              },
              itemCount: 3,
              ListSouraModel:ConstantsValue.listQuarn,
            ),
            CustomTitleSearchHomePage(
              title: "Recommended Sourahs",
            ),
            ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomReceentlySourahsCard(),
              itemCount: 10,
            )
          ],
        ),
      ),
    );
  }
}
