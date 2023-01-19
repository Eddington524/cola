import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green[200],
        alignment: Alignment.center,
        child: const Text(
          'Tab2 View',
          style: TextStyle(
            fontSize: 30,
          ),
        )
    );
  }
}
