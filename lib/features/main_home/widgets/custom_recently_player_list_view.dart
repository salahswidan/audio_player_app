import 'package:flutter/material.dart';

class CustomRecentlyPlayerListView extends StatelessWidget {
  const CustomRecentlyPlayerListView({
    super.key,
    required this.souraName,
    required this.readerName,
  });
  final String souraName;
  final String readerName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: ListView.separated(
            //shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
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
                      souraName,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      readerName,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffB1AFE9)),
                    ),
                  ],
                ),
            separatorBuilder: (context, index) => SizedBox(width: 17),
            itemCount: 3),
      ),
    );
  }
}
