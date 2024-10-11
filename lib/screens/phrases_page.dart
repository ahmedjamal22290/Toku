import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/custom_widgets/phrases_widget.dart';
import 'package:toku_by_me/modules/phrases_Data.dart';

class phrasesPage extends StatelessWidget {
  const phrasesPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(99, 1, 144, 215),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(125, 33, 157, 188),
      body: ListView(
        children: getList(phrasesDataList),
      ),
    );
  }

  List<Widget> getList(List<phrasesData> DataList) {
    List<Widget> result = [];
    for (int i = 0; i < DataList.length; i++) {
      if (i < DataList.length && i != 0) {
        result.add(Divider(
          thickness: 1,
          height: 50,
          color: const Color.fromARGB(165, 255, 255, 255),
        ));
      }
      result.add(phrasesWidget(tmp: DataList[i]));
    }
    return result;
  }
}
