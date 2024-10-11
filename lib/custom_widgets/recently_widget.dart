import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/modules/recentDataInTrans.dart';

class RecentlyWidget extends StatelessWidget {
  RecentlyWidget({required this.tmp});
  Pair<String, String> tmp;
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 400,
      // height: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0, top: 3),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 190),
                  child: AutoSizeText(tmp.first,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 140, 140, 140),
                          fontSize: 21)),
                ),
                Spacer(),
                Container(
                  constraints: BoxConstraints(maxWidth: 190),
                  child: AutoSizeText(tmp.second,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 21)),
                ),
                Spacer(
                  flex: 2,
                ),
              ],
            ),
            Divider(
              thickness: 0.3,
              color: Color(0xffFB8500),
              endIndent: 100,
              indent: 100,
            )
          ],
        ),
      ),
    );
  }
}
