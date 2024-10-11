import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/modules/phrases_Data.dart';

class phrasesWidget extends StatelessWidget {
  phrasesWidget({required this.tmp});
  phrasesData tmp;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 3, bottom: 3),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tmp.enName,
                  style: const TextStyle(
                      color: Color(0xffFFB703),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  tmp.jpName,
                  style: const TextStyle(
                      color: Color(0xffFB8500),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(flex: 15),
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(tmp.Sound));
            },
            icon: const Icon(Icons.play_arrow, color: Colors.white),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
