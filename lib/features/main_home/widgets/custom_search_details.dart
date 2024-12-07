import 'package:audio_player_app/core/resourses/routes_managers.dart';
import 'package:audio_player_app/models/soura_model.dart';
import 'package:flutter/material.dart';

class CustomSearchDetails extends StatelessWidget {
  CustomSearchDetails({
    super.key,
    required this.souraModel,
    required this.itemCount, required this.onTap,
  });
  final SouraModel souraModel;
  final int itemCount;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 198,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: ListView.separated(
            //shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
                  onTap:onTap,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            "assets/images/quran_image/qu3.jpg",
                            fit: BoxFit.cover,
                            width: 151,
                            height: 151,
                          ),
                          //child: Image.asset("assets/images/quran_image/qu3.jpg"),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        Text(
                          souraModel.soura,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text(
                          souraModel.reader,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffB1AFE9)),
                        ),
                      ],
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 17),
            itemCount: itemCount),
      ),
    );
  }
}
