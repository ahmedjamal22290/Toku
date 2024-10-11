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
      // more faster than below
      // body: ListView(
      // children: getList(),
      //more dynamic than the below
      // children: [
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     tmp: getList(numss),
      //       // text1: one.jpName,
      //       // text2: one.enName,
      //       // image: one.pic,
      //       ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: two.jpName,
      //     text2: two.enName,
      //     image: two.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: three.jpName,
      //     text2: three.enName,
      //     image: three.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: four.jpName,
      //     text2: four.enName,
      //     image: four.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: five.jpName,
      //     text2: five.enName,
      //     image: five.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: six.jpName,
      //     text2: six.enName,
      //     image: six.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: seven.jpName,
      //     text2: seven.enName,
      //     image: seven.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: eight.jpName,
      //     text2: eight.enName,
      //     image: eight.pic,
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 9.0),
      //   child: picWidget(
      //     text1: nine.jpName,
      //     text2: nine.enName,
      //     image: nine.pic,
      //   ),
      // ),
      // ],
      // ),
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
