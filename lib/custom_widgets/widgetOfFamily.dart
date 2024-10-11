import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/modules/dataOfFamily.dart';

class FamilyMembersWidget extends StatelessWidget {
  FamilyMembersWidget({required this.tmp});
  family tmp;
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 10),
          child: Container(
              decoration: BoxDecoration(
                  color: Color(0x6400AAFF),
                  borderRadius: BorderRadius.circular(20)),
              width: 100,
              child: Image.asset(
                tmp.picName!,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 11.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tmp.enName!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                tmp.jpName!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            final sound = AudioPlayer();
            sound.play(AssetSource(tmp.soundName!));
          },
          icon: Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
            size: 28,
          ),
        )
      ],
    );
  }
}
