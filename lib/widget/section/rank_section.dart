import 'package:cola/widget/Section.dart';
import 'package:flutter/material.dart';

import 'package:cola/widget/item_image.dart';
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
      children: [
        const SizedBox(height: 15),
        const Text(
          '데일리 아이템 랭킹',
          style:
          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        const Text('매일 1~5위에게 보너스 포인트 지급!'),
        Row(
          children: [
            /// 카드!
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, 30),
                      child: const ItemImage(
                        isCicle: false,
                        width: 230,
                        height: 230,
                        imgUrl:
                        'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
                      ),
                    ),
                    Transform.rotate(
                      angle: -0.15,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(Icons.star,
                              shadows: <Shadow>[
                                Shadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  offset: Offset.fromDirection(1),
                                ),
                              ],
                              size: 55,
                              color: Colors.white),
                          const Icon(Icons.star,
                              size: 47, color: Colors.greenAccent),
                          const Text('1'),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      const Text("슬램덩크 북산 포스터",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          ItemImage(
                              width: 30,
                              height: 30,
                              imgUrl:
                              'https://avatars.githubusercontent.com/u/56524770?v=4',
                              isCicle: true),
                          SizedBox(width: 7),
                          Text('backho')
                        ],
                      ),
                      Container(
                        width: 220,
                        height: 3,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                      Text('좋아요 64개'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const MoreButton(
          text: '랭킹 더보기',
        ),
      ],
    ));
  }
}
