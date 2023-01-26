import 'package:cola/widget/trend_item.dart';
import 'package:flutter/material.dart';

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
          padding: EdgeInsets.all(20),
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            children: [
              //베너
              Container(
                  height: 180,
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
              Container(
                height: 1000,
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
                                  fontSize: 30, fontWeight: FontWeight.w300))
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
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
