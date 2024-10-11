import 'package:flutter/material.dart';

class popBack extends StatelessWidget {
  const popBack({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff023047),
        fixedSize: const Size(60, 60),
      ),
      child: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
    );
  }
}
