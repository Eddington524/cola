import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  final String text;

  const MoreButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          '$text',
          style: TextStyle(fontSize: 13),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
