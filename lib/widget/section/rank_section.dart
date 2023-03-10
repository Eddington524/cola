import 'package:cola/widget/rank_listview.dart';
import 'package:cola/widget/section/section.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/more_button.dart';

class RankSection extends StatefulWidget {
  const RankSection({Key? key}) : super(key: key);

  @override
  State<RankSection> createState() => _RankSectionState();
}

class _RankSectionState extends State<RankSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 15),
        Text(
          '데일리 아이템 랭킹',
          style:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Text('매일 1~5위에게 보너스 포인트 지급!'),
        SizedBox(height: 385, child: RankListView()),
        MoreButton(
          text: '랭킹 더보기',
        ),
      ],
    ));
  }
}
