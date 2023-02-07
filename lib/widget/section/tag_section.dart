import 'package:cola/widget/Section.dart';
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
      children: [
        const ItemTitle(
          firstText: '픽사',
          isFirstBold: true,
          secondText: '를 좋아하는 당신을 위한 추천 태그',
        ),
        Row(
          children: [
            ///태그 카드!
            Column(
              children: const [
                ItemImage(
                  width: 110,
                  imgUrl:
                  'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
                  isCicle: false,
                ),
                Text("우디"),
                Text('2341개의 게시글'),
              ],
            )
          ],
        ),
        const MoreButton(
          text: '내 관심태그 전체 보기',
        ),
      ],
    ));
  }
}
