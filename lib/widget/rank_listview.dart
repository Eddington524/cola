import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class RankListView extends StatefulWidget {
  const RankListView({Key? key}) : super(key: key);

  @override
  State<RankListView> createState() => _RankListViewState();
}

class _RankListViewState extends State<RankListView> {
  final List<String> imgArr = [
    'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
    'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
    'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
    'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
    'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
  ];

  final List<String> titleArr = [
    '슬램덩크 북산고 포스터', '송태섭 엽서', '채치수 고릴라 피규어', '서태웅 카드', '강백호 인형',
  ];

  final List<Map<String, String>> avatarArr = [
    {
    'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
    'name': 'backho'
    },
    {
    'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
    'name': '송태섭'
    },
    {
      'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
      'name': '채치수'
    },
    {
      'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
      'name': '서태웅'
    },
    {
      'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
      'name': '강백호'
    },
    {
      'url': 'https://avatars.githubusercontent.com/u/56524770?v=4',
      'name': '권준호'
    }
  ];

  final List<int> likeCountArr = [79, 2293, 2860, 761, 598, 558];

  late int count = 0;
  late int rankNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
        itemCount: imgArr.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          count = likeCountArr[index];
          rankNum = index + 1;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Transform.translate(
                    offset: const Offset(0, 30),
                    child: ItemImage(
                      isCicle: false,
                      width: 230,
                      height: 230,
                      imgUrl: imgArr[index],
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
                        Text('$rankNum'),
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
                    Text(titleArr[index],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ItemImage(
                            width: 30,
                            height: 30,
                            imgUrl:
                            avatarArr[index]['url'] ?? 'https://www.flaticon.com/kr/free-icon/user-profile_3985429?term=%ED%94%84%EB%A1%9C%ED%95%84&page=1&position=6&origin=tag&related_id=3985429',
                            isCicle: true),
                        SizedBox(width: 7),
                        Text(avatarArr[index]['name'] ?? 'cola')
                      ],
                    ),
                    Container(
                      width: 220,
                      height: 3,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    Text('좋아요 $count개'),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
