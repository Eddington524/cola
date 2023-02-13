import 'package:cola/widget/section/section.dart';
import 'package:cola/widget/tag_listview.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/item_image.dart';
import 'package:cola/widget/item_title_row.dart';
import 'package:cola/widget/more_button.dart';

class TagSection extends StatefulWidget {
  const TagSection({Key? key}) : super(key: key);

  @override
  State<TagSection> createState() => _TagSectionState();
}

class _TagSectionState extends State<TagSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      children: const [
        ItemTitle(
          firstText: '픽사',
          isFirstBold: true,
          secondText: '를 좋아하는 당신을 위한 추천 태그',
        ),
        SizedBox(
          height: 160,
            child: TagListView()),
        MoreButton(
          text: '내 관심태그 전체 보기',
        ),
      ],
    ));
  }
}
