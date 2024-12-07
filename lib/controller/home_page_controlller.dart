import 'package:flutter/material.dart';

import '../core/resourses/routes_managers.dart';

class HomePageControlller {
  static void naviagtorToPlaySouraScreen(BuildContext context){
     
                    Navigator.pushReplacementNamed(
                        context, RouteNames.kPlaySouraScreen);
                  
  }
}