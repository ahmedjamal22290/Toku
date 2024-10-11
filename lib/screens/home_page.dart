import 'package:flutter/material.dart';
import 'package:toku_by_me/custom_widgets/catgeroy_file.dart';
import 'package:toku_by_me/screens/family_members.dart';
import 'package:toku_by_me/screens/number_page.dart';
import 'package:toku_by_me/screens/colors_page.dart';
import 'package:toku_by_me/screens/phrases_page.dart';
import 'package:toku_by_me/screens/transltion_page.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xBA023047),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF023047),
        shadowColor: const Color(0xFF000000),
      ),
      body: Column(
        children: [
          catgeory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return numberPage();
              }));
            },
            color: const Color(0xFFFB8500),
            text: 'Numbers',
          ), //it's custum widget to simplyfy the code
          catgeory(
            color: const Color(0x9E00AAFF),
            text: 'Family Members',
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familyMembers();
              }));
            },
          ),
          catgeory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return colorsPage();
              }));
            },
            color: const Color(0xD6FFB803),
            text: 'Colors',
          ),
          catgeory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return phrasesPage();
              }));
            },
            color: const Color(0xFF219EBC),
            text: 'Phrases',
          ),
          catgeory(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return transltionPage();
              }));
            },
            text: 'Translator',
            color: Color(0xffFB8500),
          )
        ],
      ),
    );
  }
}
