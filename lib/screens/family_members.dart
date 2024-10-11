import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/custom_widgets/widgetOfFamily.dart';
import 'package:toku_by_me/modules/dataOfFamily.dart';

class familyMembers extends StatelessWidget {
  familyMembers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x6400AAFF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xBA023047),
        title: Text('Family Members',
            style: TextStyle(color: Colors.white, fontSize: 22)),
      ),
      body: ListView(
        children: getListOfMembers(familyMembersData),
      ),
      // body: ListView.builder(
      //   itemCount: familyMembersData.length,
      //   itemBuilder: (context, index) {
      //     return FamilyMembersWidget(
      //       tmp: familyMembersData[index],
      //     );
      //   },
      // ),
    );
  }

  List<Widget> getListOfMembers(List<family> x) {
    List<Widget> resultant = [];
    int ind = -1;
    for (int i = 0; i < x.length; i++) {
      if ((i + 1) % 2 != 0 && i + 1 >= 3 && ind < 4) {
        ind++;
        resultant.add(Row(
          children: [
            SizedBox(
              width: 300,
              child: Divider(
                color: Colors.white,
                height: 20,
                thickness: 0.5,
                endIndent: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: Text(
                Rules[ind],
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
      }
      resultant.add(FamilyMembersWidget(
        tmp: x[i],
      ));
    }
    return resultant;
  }
}
