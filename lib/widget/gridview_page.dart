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
    'http://openimage.interpark.com/goods_image_big/8/8/0/3/8106938803_l.jpg',
    'https://img.insight.co.kr/static/2021/06/10/700/img_20210610144321_up1e82g9.webp'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
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
                SizedBox(
                  width: 300,
                  height: 300,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(imgArr[index], fit: BoxFit.cover)
                    )
                ),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 35,
                    height: 35,
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
          );
          // return Container(
          //   child: Image.network(imgArr[index], fit: BoxFit.cover),
          // );
        },
      ),
    );
  }
}