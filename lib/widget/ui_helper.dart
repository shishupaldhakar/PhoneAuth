import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  VoidCallback voidCallback;
  String text;
  Color color;
  double height;
  double width;
  double fontSize;
  CustomElevatedButton(
      {super.key,
        required this.voidCallback,
        required this.text,
        required this.color,
        required this.height,
        required this.width,
        required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(width, height),
            backgroundColor: color,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: voidCallback,
        child: Text(
          text,
          style: TextStyle(
              color: const Color(0xfff2f2f2),
              fontSize: fontSize,
              fontWeight: FontWeight.w400),
        ));
  }
}