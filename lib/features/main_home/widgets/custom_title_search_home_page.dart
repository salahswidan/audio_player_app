
import 'package:flutter/material.dart';

class CustomTitleSearchHomePage extends StatelessWidget {
  const CustomTitleSearchHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 58.0, top: 32),
      child: Text(
        "RECENTLY PLAYED",
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
