import 'package:cola/theme/custom_color.dart';
import 'package:cola/widget/small_button.dart';
import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({Key? key}) : super(key: key);

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  final List<String> imgArr =  [
    '',
    'https://cdn.pixabay.com/photo/2015/10/16/11/40/tarot-991041_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/16/11/40/tarot-991041_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/16/11/40/tarot-991041_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/16/11/40/tarot-991041_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/10/16/11/40/tarot-991041_1280.jpg',
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
          if(index == 0){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ItemImage(
                  width: 90,
                  height: 90,
                  imgUrl:
                  'https://avatars.githubusercontent.com/u/56524770?v=4',
                  isCicle: true,
                ),

                /// 중간에 expend 넣는 방법!
                const Expanded(
                    child: Center(
                        child: Text(
                          '콜리포터🪐',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ))),
                Small_button(
                    w: 70,
                    h: 30,
                    bgColor: CustomColors().mainBlue,
                    textColor: Colors.white,
                    text: '팔로우'),
              ],
            );
          } else {
            return Row(
              children: [
                ItemImage(
                    width: 160,
                    height: 160,
                    imgUrl: imgArr[index],
                    isCicle: false),
              ],
            );
          }
        },
      ),
    );
  }
}
