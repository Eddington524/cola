import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  GridviewPage({Key? key}) : super(key: key);

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  final List<String> imgArr = [
    'https://m.duckyworld.co.kr/file_data/duckyworldadmin/2020/11/04/28088774d98306cd0f24dd860067391d.jpeg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'https://sitem.ssgcdn.com/43/88/53/item/1000507538843_i1_500.jpg',
    'http://openimage.interpark.com/goods_image_big/8/8/0/3/8106938803_l.jpg',
    'https://img.insight.co.kr/static/2021/06/10/700/img_20210610144321_up1e82g9.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imgArr.length,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 1 / 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ItemImage(width: 300, imgUrl: imgArr[index], isCicle: false),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(left: 10, bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: const ItemImage(
                      width: 35,
                      imgUrl:
                          'https://avatars.githubusercontent.com/u/56524770?v=4',
                      isCicle: true),
                ),
              ],
            ),
          );
          // return Container(
          //   child: Image.network(imgArr[index], fit: BoxFit.cover),
          // );
        },
      ),
    );
  }
}
