import 'package:cola/widget/Section.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/gridview_page.dart';
import 'package:cola/widget/more_button.dart';

class MarketSection extends StatefulWidget {
  const MarketSection({Key? key}) : super(key: key);

  @override
  State<MarketSection> createState() => _MarketSectionState();
}

class _MarketSectionState extends State<MarketSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      children: [
        /// text 묶음
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text("레어한 상품을 찾는다면",
                      style: TextStyle(fontSize: 25))
                ],
              ),
              const Text('덕친마켓에서',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600))
            ],
          ),
        ),
        SizedBox(height: 400, child: GridviewPage()),
        const SizedBox(
          height: 10,
        ),
        const MoreButton(
          text: '트렌드 더보기',
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}
