import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/custom_widgets/numbersWidget.dart';
import 'package:toku_by_me/custom_widgets/pop_widget.dart';
import 'package:toku_by_me/modules/numberData.dart';

class numberPage extends StatelessWidget {
  numberPage({super.key});
  dataNumbers nums = dataNumbers();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBA023047),
      appBar: AppBar(
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        backgroundColor: const Color(0xff023047),
        leadingWidth: 60,
        toolbarHeight: 50,
        leading: popBack(),
      ),
      body: ListView.builder(
          itemCount: numss.length, //the limit
          itemBuilder: (context, index) {
            return picWidget(tmp: numss[index]);
          }),
     
    );
  }

  List<Widget> getList() {
    List<Widget> numm = [];
    for (int i = 0; i < numss.length; i++) {
      numm.add(picWidget(tmp: numss[i]));
    }
    return numm;
  }
}
