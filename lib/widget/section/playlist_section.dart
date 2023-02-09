import 'package:cola/widget/item/play_item.dart';
import 'package:cola/widget/section/section.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/item_title_row.dart';

class PlaylistSection extends StatefulWidget {
  const PlaylistSection({Key? key}) : super(key: key);

  @override
  State<PlaylistSection> createState() => _PlaylistSectionState();
}

class _PlaylistSectionState extends State<PlaylistSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      children: [
        const ItemTitle(
          firstText: '오늘의 ',
          isFirstBold: false,
          secondText: '인기 플레이',
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: const <Widget> [
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
              PlayItem(),
            ],
          ),
        )
      ],
    ));
  }
}
