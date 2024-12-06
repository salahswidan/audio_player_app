import 'package:flutter/material.dart';

class HomeController {
   static List<Icon> HomeIcon = [
      Icon(Icons.align_horizontal_left_outlined),
      Icon(Icons.home),
      Icon(Icons.heart_broken),
      Icon(Icons.list),
      Icon(Icons.settings),
    ];

   static List<Widget> HomePages = [
      Scaffold(body: Center(child: Text("align_horizontal_left_outlined"),),),
      Scaffold(body: Center(child: Text("home"),),),
      Scaffold(body: Center(child: Text("haert"),),),
      Scaffold(body: Center(child: Text("list"),),),
      Scaffold(body: Center(child: Text("setting"),),),
    ];

}