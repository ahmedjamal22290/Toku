import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_by_me/modules/colorsPageData.dart';

class ColorsPageWidget extends StatelessWidget {
  ColorsPageWidget({required this.Data});
  ColorsPageData Data;
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              scale: 0.6,
              Data.picPath,
            ),
            Text(
              Data.jpName,
              style: TextStyle(
                  color: Data.color,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 30,
                    )
                  ]),
            ),
            Text(
              Data.enName,
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 30,
                    )
                  ]),
            ),
            SizedBox(
              height: 60,
              child: IconButton(
                onPressed: () {
                  final playColor = AudioPlayer();
                  playColor.play(AssetSource(Data.soundColor));
                },
                icon: Icon(Icons.play_arrow),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
