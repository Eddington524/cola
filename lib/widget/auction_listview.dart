import 'package:cola/theme/custom_color.dart';
import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class AuctionListView extends StatefulWidget {
  const AuctionListView({Key? key}) : super(key: key);

  @override
  State<AuctionListView> createState() => _AuctionListViewState();
}

class _AuctionListViewState extends State<AuctionListView> {
  final List<String> imgArr = [
    'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg.theqoo.net%2Fimg%2FHbqyL.jpg&type=sc960_832',
    'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg.theqoo.net%2Fimg%2FHbqyL.jpg&type=sc960_832',
    'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimg.theqoo.net%2Fimg%2FHbqyL.jpg&type=sc960_832',
  ];

  final List<Map<String, dynamic>> itemInfoArr = [
    {
      'title': '볼 빵빵 쿠로미',
      'price': 13000,
      'count': 17
    },
    {
      'title': '볼 빵빵 쿠로미',
      'price': 15000,
      'count': 23
    },
    {
      'title': '볼 빵빵 쿠로미',
      'price': 18000,
      'count': 18
    },
  ];

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
          int count = itemInfoArr[index]['count'];
          int price = itemInfoArr[index]['price'];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemImage(
                isCicle: false,
                width: 300,
                height: 150,
                imgUrl: imgArr[index],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                itemInfoArr[index]['title'],
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('입찰가'),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 25,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              '$count',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: CustomColors().darkGrey),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '$price원',
                        style: TextStyle(
                            color: CustomColors().mainBlue,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
