import 'package:cola/model/model.dart';
import 'package:cola/pages/detail/item_detail.dart';
import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class RankListView extends StatefulWidget {
  const RankListView({Key? key}) : super(key: key);

  @override
  State<RankListView> createState() => _RankListViewState();
}

class _RankListViewState extends State<RankListView> {
  static List<String> userImgUrl = [
    'https://randomuser.me/api/portraits/women/56.jpg',
    'https://randomuser.me/api/portraits/men/55.jpg',
    'https://randomuser.me/api/portraits/women/54.jpg',
    'https://randomuser.me/api/portraits/women/42.jpg',
    'https://randomuser.me/api/portraits/women/63.jpg'
  ];

  static List<String> userName = [
    'backho',
    'ryota',
    'gorila',
    'rukawa',
    'daeman',
  ];

  static List<String> detailImage = [
    'https://cdn.pixabay.com/photo/2015/10/29/01/24/shoes-1011596__480.jpg',
    'https://cdn.pixabay.com/photo/2019/04/26/19/44/basketball-court-4158462__480.jpg',
    'https://cdn.pixabay.com/photo/2017/11/18/00/09/blender-2958862__480.jpg',
    'https://cdn.pixabay.com/photo/2016/07/02/01/14/basketball-1492286__480.jpg',
    'https://img.freepik.com/free-vector/basketball-badges-pack_23-2147524189.jpg?size=338&ext=jpg&ga=GA1.2.1158076534.1664264137&semt=sph',
  ];

  static List<String> itemTitle = [
    '슬램덩크 북산고 포스터',
    '송태섭 엽서',
    '채치수 고릴라 피규어',
    '서태웅 카드',
    '강백호 인형',
  ];

  static List<String> uploadDate = [
    '2022.04.04',
    '2022.02.15',
    '2023.01.12',
    '2023.02.14',
    '2022.11.03',
  ];

  static List<bool> isLike = [
    true,
    false,
    false,
    true,
    false,
  ];

  static List<int> likeCount = [79, 2293, 2860, 761, 598, 558];
  static List<int> commentCount = [3262, 2123, 11, 57, 233, 325];

  static List<String> detailContents = [
    '없으면 인간에 소담스러운 만천하의 광야에서 기쁘며, 들어 이 것이다. 역사를 따뜻한 그들의 것이다.보라, 위하여서 인간이 것이다. 가치를 대고, 전인 것이다. 같이 피고, 얼마나 청춘의 영락과 크고 가는 때문이다.',
    '우는 오직 피어나기 그들은 긴지라 영원히 하여도 인생에 않는 있으랴? 그러므로 이는 아니한 얼음과 그들의 때까지 풍부하게 하는 것이다.',
    '끓는 광야에서 가지에 이상의 그들은 사막이다. 얼음이 심장의 넣는 하는 커다란 두손을 뿐이다. 하는 긴지라 이것이야말로 있으며, 행복스럽고 얼마나 구하지 못할 말이다.',
    '품에 풍부하게 끝까지 얼음에 때문이다. 쓸쓸한 우는 간에 설레는 동력은 이상, 눈에 말이다.스며들어 주며, 우리의 따뜻한 새 사막이다. 붙잡아 얼마나 풍부하게 인생을 사랑의 따뜻한 힘있다. 청춘 구하지 위하여, 끓는다.',
    '것이 이상이 가지에 대고, 끓는 방지하는 붙잡아 때까지 아니다. 바로 천고에 인생에 그들을 사막이다. 대고, 피어나는 이상의 바로 것이다.',
  ];

  static List<List<String>> tags = [
    ['슬램덩크', '강백호'],
    ['슬램덩크', '서태웅'],
    ['슬램덩크', '고릴라'],
    ['슬램덩크', '송태섭'],
    ['슬램덩크', '정대만'],
  ];

  final List<DetailItem> detailItemData = List.generate(
      detailContents.length, (index) =>
      DetailItem(
          userImgUrl[index],
          userName[index],
          uploadDate[index],
          isLike[index],
          likeCount[index],
          commentCount[index],
          itemTitle[index],
          detailContents[index],
          tags[index],
          detailImage[index]));

  late int count = 0;
  late int rankNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
        itemCount: itemTitle.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          count = detailItemData[index].likeCount;
          rankNum = index + 1;
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemDetailPage(item: detailItemData[index], )));
            },
            child: Column(
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
                        imgUrl: detailItemData[index].detailImage,
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
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),
                      Text(detailItemData[index].itemTitle,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          ItemImage(
                              width: 30,
                              height: 30,
                              imgUrl: detailItemData[index].userImgUrl,
                              isCicle: true),
                          SizedBox(width: 7),
                          Text(detailItemData[index].userName)
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
            ),
          );
        },
      ),
    );
  }
}
