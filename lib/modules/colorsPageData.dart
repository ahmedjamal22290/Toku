import 'package:flutter/material.dart';

class ColorsPageData {
  ColorsPageData(
      {required this.color,
      required this.enName,
      required this.jpName,
      required this.picPath,
      required this.soundColor});
  String soundColor, enName, jpName, picPath;
  Color color;
}

List<ColorsPageData> colorsListData = [
  ColorsPageData(
      color: Colors.red,
      enName: 'Red',
      jpName: 'Aka',
      picPath: 'assets/images/colors/color_red.png',
      soundColor: 'sounds/colors/red.wav'),
  ColorsPageData(
      color: Colors.white,
      enName: 'White',
      jpName: 'Shiro',
      picPath: 'assets/images/colors/color_white.png',
      soundColor: 'sounds/colors/white.wav'),
  ColorsPageData(
      color: Colors.red,
      enName: 'Yellow',
      jpName: 'Ki',
      picPath: 'assets/images/colors/yellow.png',
      soundColor: 'sounds/colors/yellow.wav'),
  ColorsPageData(
      color: Colors.green,
      enName: 'Green',
      jpName: 'Midori	',
      picPath: 'assets/images/colors/color_green.png',
      soundColor: 'sounds/colors/green.wav'),
  ColorsPageData(
      color: Colors.grey,
      enName: 'Gray',
      jpName: 'Hai',
      picPath: 'assets/images/colors/color_gray.png',
      soundColor: 'sounds/colors/gray.wav'),
  ColorsPageData(
      color: Color(0xffD4CC9A),
      enName: 'Dusty Yellow',
      jpName: 'Hokori ppoi kiiro',
      picPath: 'assets/images/colors/color_dusty_yellow.png',
      soundColor: 'sounds/colors/dusty yellow.wav'),
  ColorsPageData(
      color: Colors.brown,
      enName: 'Brown',
      jpName: 'Cha',
      picPath: 'assets/images/colors/color_brown.png',
      soundColor: 'sounds/colors/brown.wav'),
  ColorsPageData(
      color: const Color.fromARGB(221, 0, 0, 0),
      enName: 'Black',
      jpName: 'Kuro',
      picPath: 'assets/images/colors/color_black.png',
      soundColor: 'sounds/colors/black.wav'),
];
