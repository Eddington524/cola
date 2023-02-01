import 'package:flutter/material.dart';

class ItemTitle extends StatelessWidget {
  final String firstText;
  final bool firstIsBold;
  final String secondText;
  final bool secondIsBold;

  const ItemTitle(
      {Key? key,
      required this.firstText,
      required this.firstIsBold,
      required this.secondText,
      required this.secondIsBold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Text(
            '$firstText',
            style: TextStyle(
                fontSize: 25,
                fontWeight: firstIsBold ? FontWeight.w600 : FontWeight.normal),
          ),
          Text(
            '$secondText',
            style: TextStyle(
                fontSize: 25,
                fontWeight: secondIsBold ? FontWeight.w600 : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
