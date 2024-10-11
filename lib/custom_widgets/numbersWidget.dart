import 'package:flutter/material.dart';
import 'package:toku_by_me/modules/numberData.dart';
import 'package:audioplayers/audioplayers.dart';

class picWidget extends StatelessWidget {
  final dataNumbers tmp;

  picWidget({required this.tmp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9.0),
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: Color.fromARGB(131, 65, 112, 135),
              ),
              width: 100,
              child: Image.asset(tmp.pic!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
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
                  ),
                ],
              ),
            ),
            const Spacer(flex: 15),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(tmp.sound!));
              },
              icon: const Icon(Icons.play_arrow, color: Colors.white),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
