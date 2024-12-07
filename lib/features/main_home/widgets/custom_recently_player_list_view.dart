
import 'package:flutter/material.dart';

class CustomRecentlyPlayerListView extends StatelessWidget {
  const CustomRecentlyPlayerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          //shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Image.asset(
                      "assets/images/test.png",
                      fit: BoxFit.cover,
                      width: 151,
                      height: 151,
                    ),
                    //child: Image.asset("assets/images/quran_image/qu3.jpg"),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  Text(
                    "Soura Name",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    "Reader Name",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffB1AFE9)),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => SizedBox(width: 17),
          itemCount: 3),
    );
  }
}
