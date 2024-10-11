import 'package:flutter/material.dart';

class catgeory extends StatelessWidget {
  catgeory({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap; //variable function
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.only(left: 12),
          width: double.infinity,
          height: 60,
          alignment: Alignment.centerLeft,
          // color: color,
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
