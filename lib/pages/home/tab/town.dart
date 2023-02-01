import 'package:cola/widget/gridview_page.dart';
import 'package:cola/widget/item_title_row.dart';
import 'package:cola/widget/more_button.dart';
import 'package:cola/widget/trend_item.dart';
import 'package:flutter/material.dart';

import '../../../widget/action_item.dart';

class TownScreen extends StatefulWidget {
  const TownScreen({Key? key}) : super(key: key);

  @override
  State<TownScreen> createState() => _TownScreenState();
}

class _TownScreenState extends State<TownScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          color: Colors.black12,
          alignment: Alignment.center,
          child: Column(
            children: [
              ///베너
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.only(bottom: 10),
                  height: 180,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                          height: 150,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                // padding: EdgeInsets.all(10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                      'https://d.line-scdn.net/stf/linecorp/ko/pr/Chef_Banner_ko.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  color: Colors.purple,
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          child: Container(
                        child: Text('.......'),
                      ))
                    ],
                  )),

              /// 트렌드 아이템 영역
              Container(
                color: Colors.white,
                height: 750,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
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
                ),
              ),

              ///오늘의 인기플레이 영역 -
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    const ItemTitle(
                        firstText: '오늘의 ',
                        firstIsBold: false,
                        secondText: '인기 플레이',
                        secondIsBold: true),
                    Row(
                      children: [
                        ///인기 플레이 카드!
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              SizedBox(
                                width: 90,
                                height: 150,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                      'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                margin: const EdgeInsets.only(bottom: 10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Colors.lightBlueAccent,
                                      Colors.orangeAccent,
                                    ],
                                  ),
                                ),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Image.network(
                                        'https://avatars.githubusercontent.com/u/56524770?v=4',
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              ///태그추천 영역 -
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    const ItemTitle(
                        firstText: '픽사',
                        firstIsBold: true,
                        secondText: '를 좋아하는 당신을 위한 추천 태그',
                        secondIsBold: false),
                    Row(
                      children: [
                        ///태그 카드!
                        Column(
                          children: [
                            SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg'),
                              ),
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
                ),
              ),

              ///마켓 영역 -
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    /// text 묶음
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text("레어한 상품을 찾는다면",
                                  style: TextStyle(fontSize: 25))
                            ],
                          ),
                          const Text('덕친마켓에서',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(height: 400, child: GridviewPage()),

                    /// 더보기 버튼
                    const MoreButton(
                      text: '트렌드 더보기',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),

              /// 소식 -
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ItemTitle(
                        firstText: '콜리포터가 전하는 소식',
                        firstIsBold: false,
                        secondText: '',
                        secondIsBold: false),
                    Container(
                      height: 160,
                      child: Row(
                        children: [
                          // 인플루언서 영역
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                // margin: EdgeInsets.only(right: 15),
                                alignment: Alignment.center,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.network(
                                      'https://avatars.githubusercontent.com/u/56524770?v=4',
                                      fit: BoxFit.fill),
                                ),
                              ),

                              /// 중간에 expend 넣는 방법!
                              Expanded(child: Center(child: Text('콜리포터'))),
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    '팔로우',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
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
                ),
              ),

              /// 경매상품 영역 -
              Container(
                padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ItemTitle(
                        firstText: "유저들이 함께하는 ",
                        firstIsBold: false,
                        secondText: '경매 상품',
                        secondIsBold: true),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          AuctionItem(),

                          /// 카드!
                        ],
                      ),
                    ),
                    MoreButton(text: "경매상품 더보기")
                  ],
                ),
              ),

              /// 데일리 아이템 랭킹 -
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Column(
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
                                Container(
                                  width: 230,
                                  height: 230,
                                  margin: EdgeInsets.only(top: 30),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                        'https://dimg.donga.com/wps/NEWS/IMAGE/2022/12/29/117210753.1.edit.jpg',
                                        fit: BoxFit.cover),
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
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  const Text("슬램덩크 북산 포스터",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          child: Image.network(
                                              'https://avatars.githubusercontent.com/u/56524770?v=4',
                                              fit: BoxFit.fill),
                                        ),
                                      ),
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
                ),
              ),

              /// 기획전 영역
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                margin: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    const ItemTitle(
                        firstText: '콜리샵 ',
                        firstIsBold: true,
                        secondText: '기획전',
                        secondIsBold: false),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: SizedBox(
                                width: 390,
                                height: 410,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.network(
                                      'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg.theqoo.net%2Fimg%2FHbqyL.jpg&type=sc960_832',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),

                            /// 타이머 영역
                            Transform.translate(
                              offset: Offset(0, 360),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black26.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          '01',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          '일',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),

                                  /// : 컨테이너
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black26.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black26.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 50,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black26.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          '06',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          '시간',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),

                                  /// : 컨테이너
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black26.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 5,
                                          height: 5,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black26.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.black26.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          '43',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          '분',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 100,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('콜리'),
                              const Text(
                                '에스더버니 무드등 가습기',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              // 가격행
                              Row(
                                children: const [
                                  Text('44%',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.w600)),
                                  Text("14,700원",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  Text("21,000원",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black26,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: const Text(
                                      'N',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                      width: 65,
                                      height: 15,
                                      decoration: BoxDecoration(
                                        color: Colors.lightBlueAccent,
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                      ),
                                      child: const Text(
                                        'only 콜리',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                  Container(
                                    width: 65,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: const Text(
                                      '사전예약',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.black38),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    MoreButton(text: "경매상품 더보기")
                  ],
                ),
              )
            ],
          )),
    );
  }
}
