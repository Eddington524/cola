import 'package:cola/widget/Section.dart';
import 'package:cola/widget/item/trend_item.dart';
import 'package:cola/widget/more_button.dart';
import 'package:flutter/material.dart';

class TrendSection extends StatefulWidget {
  const TrendSection({Key? key}) : super(key: key);

  @override
  State<TrendSection> createState() => _TrendSectionState();
}

class _TrendSectionState extends State<TrendSection> {
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
                  Text(
                    "sam1",
                    style: TextStyle(
                        color: Colors.orange, fontSize: 25),
                  ),
                  Text("님을 위한", style: TextStyle(fontSize: 25))
                ],
              ),
              const Text('트렌드 아이템',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600))
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 왼쪽열
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  ///card
                  TrendItem(
                    itemImgUrl:
                    'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                    itemName: '꽝 없는 뽑기?!😃',
                    userImgUrl:
                    'https://avatars.githubusercontent.com/u/56524770?v=4',
                    userName: 'eddy',
                    likeCount: 8,
                    commentCount: 10,
                  ),
                  TrendItem(
                    itemImgUrl:
                    'https://mblogthumb-phinf.pstatic.net/MjAyMjA1MzBfMjE3/MDAxNjUzOTEwOTMzNzgx.66CcW7EuR--tpmCqyvaFxE7bPaN4w4Why_IYDp1OP94g.JTg2pEvQIsDq0D_lqjUAvCweCPZMZGyCt_IG0JmV_00g.JPEG.dud8448/Screenshot%EF%BC%BF20220525%EF%BC%8D154010%EF%BC%BF10x10.jpg?type=w800',
                    itemName: '꽝 없는 뽑기?!😃',
                    userImgUrl:
                    'https://avatars.githubusercontent.com/u/56524770?v=4',
                    userName: 'eddy',
                    likeCount: 8,
                    commentCount: 10,
                  ),
                  TrendItem(
                    itemImgUrl:
                    'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                    itemName: '꽝 없는 뽑기?!😃',
                    userImgUrl:
                    'https://avatars.githubusercontent.com/u/56524770?v=4',
                    userName: 'eddy',
                    likeCount: 8,
                    commentCount: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),

            /// 오른쪽열
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  ///card
                  TrendItem(
                    itemImgUrl:
                    'https://claboshop.com/web/product/extra/big/20200629/91c80f09258b07f9a99687f2b0863f1c.jpg',
                    itemName: '고흐의 컵',
                    userImgUrl:
                    'https://news.imaeil.com/photos/2019/11/11/2019111115511918075_m.jpg',
                    userName: 'pengpeng',
                    likeCount: 100,
                    commentCount: 20,
                  ),
                  TrendItem(
                    itemImgUrl:
                    'https://claboshop.com/web/product/extra/big/20200629/91c80f09258b07f9a99687f2b0863f1c.jpg',
                    itemName: '고흐의 컵',
                    userImgUrl:
                    'https://news.imaeil.com/photos/2019/11/11/2019111115511918075_m.jpg',
                    userName: 'pengpeng',
                    likeCount: 100,
                    commentCount: 20,
                  ),
                  TrendItem(
                    itemImgUrl:
                    'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                    itemName: '꽝 없는 뽑기?!😃',
                    userImgUrl:
                    'https://avatars.githubusercontent.com/u/56524770?v=4',
                    userName: 'eddy',
                    likeCount: 8,
                    commentCount: 10,
                  ),
                ],
              ),
            ),
          ],
        ),

        /// 더보기 버튼
        const MoreButton(
          text: '트렌드 더보기',
        )
      ],
    ));
  }
}
