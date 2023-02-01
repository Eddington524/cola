import 'package:flutter/material.dart';

class AuctionItem extends StatelessWidget {
  const AuctionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(45),
          ),
          child: SizedBox(
            width: 280,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                  'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg.theqoo.net%2Fimg%2FHbqyL.jpg&type=sc960_832',
                  fit: BoxFit.cover),
            ),
          ),
        ),
        const Text(
          '쿠로미 볼 빵빵 인형',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Text('입찰가'),
                  Container(
                    width: 25,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      '18',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black26),
                    ),
                  ),
                ],
              ),
              const Text(
                '13,000원',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )
            ])
          ],
        )
      ],
    );
  }
}