import 'package:cola/widget/section/auction_section.dart';
import 'package:cola/widget/section/market_section.dart';
import 'package:cola/widget/section/news_section.dart';
import 'package:cola/widget/section/playlist_section.dart';
import 'package:cola/widget/section/promotion_section.dart';
import 'package:cola/widget/section/rank_section.dart';
import 'package:cola/widget/section/tag_section.dart';
import 'package:cola/widget/section/trend_section.dart';
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
                                      fit: BoxFit.cover),
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

              TrendSection(),

              PlaylistSection(),

              TagSection(),

              MarketSection(),

              NewsSection(),

              AuctionSection(),

              RankSection(),

              PromotionSection(),
            ],
          )),
    );
  }
}
