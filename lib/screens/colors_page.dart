import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/custom_widgets/colors_page_widget.dart';
import 'package:toku_by_me/modules/colorsPageData.dart';

class colorsPage extends StatelessWidget {
  const colorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(99, 1, 144, 215),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(141, 17, 85, 102),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsListData.length,
        itemBuilder: (context, index) {
          return ColorsPageWidget(Data: colorsListData[index]);
        },
      ),
    );
  }
}
