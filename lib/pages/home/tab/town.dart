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
              Container(
                  height: 180,
                  child: Column(
                    children: [
                      Container(
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
                              Container(
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    color: Colors.purple,
                                  ),
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          child: Container(
                        color: Colors.green,
                      ))
                    ],
                  )),
              Container(
                height: 1000,
                child: Column(
                  children: [
                    /// text 묶음
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "sam1",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 25),
                            ),
                            Text("님을 위한", style: TextStyle(fontSize: 25))
                          ],
                        ),
                        Text('트렌드 아이템',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w300))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// 왼쪽열
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                ///card
                                Column(
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.network(
                                          'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                                          fit: BoxFit.fill),
                                    ),
                                    Text('꽝 없는 뽑기?!😃'),
                                    /// profile img + name
                                    Row(
                                      children: [
                                        Container(
                                          width: 20,
                                          margin: EdgeInsets.only(right: 5),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: Image.network(
                                                'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                        Text("passbyme")
                                      ],
                                    ),
                                    /// like, comment
                                    Row(
                                      children: [
                                        Icon(Icons.favorite_border),
                                        Text("8"),
                                        Icon(Icons.comment_outlined),
                                        Text("10"),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          width: 20,
                        ),

                        /// 오른쪽열
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                ///card
                                Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.network(
                                            'https://contents.kyobobook.co.kr/sih/fit-in/458x0/pdt/8809559749901.jpg',
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
