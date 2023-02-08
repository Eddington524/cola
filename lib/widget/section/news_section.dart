
import 'package:cola/widget/section/section.dart';
import 'package:flutter/material.dart';

import 'package:cola/theme/custom_color.dart';
import 'package:cola/widget/box.dart';
import 'package:cola/widget/item_image.dart';
import 'package:cola/widget/item_title_row.dart';

class NewsSection extends StatefulWidget {
  const NewsSection({Key? key}) : super(key: key);

  @override
  State<NewsSection> createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  @override
  Widget build(BuildContext context) {
    return Section(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ItemTitle(
          firstText: '콜리포터가 전하는 소식',
          isFirstBold: false,
        ),
        SizedBox(
          height: 160,
          child: Row(
            children: [
              // 인플루언서 영역
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ItemImage(
                    width: 80,
                    height: 80,
                    imgUrl:
                    'https://avatars.githubusercontent.com/u/56524770?v=4',
                    isCicle: true,
                  ),

                  /// 중간에 expend 넣는 방법!
                  const Expanded(
                      child: Center(child: Text('콜리포터'))),
                  Box(
                      w: 60,
                      h: 30,
                      bgColor: CustomColors().mainBlue,
                      textColor: Colors.white,
                      text: '팔로우'),
                ],
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 160,
                height: 160,
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    'https://image.yes24.com/images/chyes24/8/2/2/1/8221e0a47866a34b9126ac84c27d10b4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
