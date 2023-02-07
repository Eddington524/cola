import 'package:cola/widget/Section.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/item/auction_item.dart';
import 'package:cola/widget/item_title_row.dart';
import 'package:cola/widget/more_button.dart';

class AuctionSection extends StatefulWidget {
  const AuctionSection({Key? key}) : super(key: key);

  @override
  State<AuctionSection> createState() => _AuctionSectionState();
}

class _AuctionSectionState extends State<AuctionSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ItemTitle(
          firstText: "유저들이 함께하는 ",
          isFirstBold: false,
          secondText: '경매 상품',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              AuctionItem(),
            ],
          ),
        ),
        const MoreButton(text: "경매상품 더보기")
      ],
    ));
  }
}
