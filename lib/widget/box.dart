import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final double w;
  final double h;
  final Color bgColor;
  final Color textColor;
  final String text;
  late final double? borderRadius;

  Box(
      {Key? key,
      required this.w,
      required this.h,
      required this.bgColor,
      required this.text,
      required this.textColor, this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
