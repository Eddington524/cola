import 'package:cola/model/market.dart';
import 'package:cola/repository/market_repo.dart';
import 'package:cola/theme/custom_color.dart';
import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  GridviewPage({Key? key}) : super(key: key);

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: MarketRepo().loadData(),
        builder: (context, snapshot) {
          var list = snapshot.data ?? [];

          return GridView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2 / 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              var item = list[index];
              var price = item.price;
              return Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      ItemImage(
                          width: 185,
                          height: 185,
                          imgUrl: item.itemThumnail,
                          isCicle: false),
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(left: 10, bottom: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                        ),
                        child: ItemImage(
                            width: 35, imgUrl: item.userImg, isCicle: true),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(item.itemTitle),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Text(getDeliverText(item),style: TextStyle(fontWeight: FontWeight.w600)),
                              SizedBox(width: 5,),
                              Text('$price???', style: TextStyle(color: CustomColors().mainBlue, fontWeight:FontWeight.w600),),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          );
        });
  }

  String getDeliverText(Market item) {
    if (item.isDelivery && item.isDirectDeal) {
      return '?????????, ??????';
    } else if (item.isDelivery) {
      return '????????????';
    } else if (item.isDirectDeal) {
      return '?????????';
    } else {
      return "";
    }
  }
}
