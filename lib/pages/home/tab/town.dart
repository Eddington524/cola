import 'package:flutter/material.dart';

class TownScreen extends StatefulWidget {
  const TownScreen({Key? key}) : super(key: key);

  @override
  State<TownScreen> createState() => _TownScreenState();
}

class _TownScreenState extends State<TownScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow[200],
        alignment: Alignment.center,
        child: Column(
          children: [
            const Text(
              'Tab1 View',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        )
    );
  }
}
