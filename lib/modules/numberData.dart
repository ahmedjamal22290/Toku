import 'package:flutter/material.dart';

void main() {}

class dataNumbers {
  const dataNumbers({this.enName, this.jpName, this.pic, this.sound});
  final String? enName, jpName, pic, sound;
}

List<dataNumbers> numss = const [
  dataNumbers(
      sound: 'sounds/numbers/number_one_sound.mp3',
      enName: 'One',
      jpName: 'Ichi',
      pic: 'assets/images/numbers/number_one.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_two_sound.mp3',
      enName: 'Two',
      jpName: 'Ni',
      pic: 'assets/images/numbers/number_two.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_three_sound.mp3',
      enName: 'Three',
      jpName: 'San',
      pic: 'assets/images/numbers/number_three.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_four_sound.mp3',
      enName: 'Four',
      jpName: 'Shi',
      pic: 'assets/images/numbers/number_four.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_five_sound.mp3',
      enName: 'Five',
      jpName: 'Go',
      pic: 'assets/images/numbers/number_five.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_six_sound.mp3',
      enName: 'Six',
      jpName: 'Roku',
      pic: 'assets/images/numbers/number_six.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_seven_sound.mp3',
      enName: 'Seven',
      jpName: 'Sebun',
      pic: 'assets/images/numbers/number_seven.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_eight_sound.mp3',
      enName: 'Eight',
      jpName: 'Hachi',
      pic: 'assets/images/numbers/number_eight.png'),
  dataNumbers(
      sound: 'sounds/numbers/number_nine_sound.mp3',
      enName: 'Nine',
      jpName: 'Kyu',
      pic: 'assets/images/numbers/number_nine.png')
];
