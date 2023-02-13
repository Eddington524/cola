import 'package:cola/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'item_image.dart';

class TagListView extends StatefulWidget {
  const TagListView({Key? key}) : super(key: key);

  @override
  State<TagListView> createState() => _TagListViewState();
}

class _TagListViewState extends State<TagListView> {
  final List<String> imgArr = [
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg',
    'https://m.gundamworks.com/web/product/big/202206/146d25b1ae038985390e3b0bca7ffc93.jpg'
  ];

  final List<String> titleArr = [
    '우디', '월레스', '디즈니 프린세스', '그로밋', '산리오', '디즈니'
  ];

  final List<int> tagCountArr = [79,2293,2860,761,598,558];

  late int count = 0;

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
          count = tagCountArr[index];
          return Column(
            children: [
              ItemImage(
                width: 110,
                imgUrl: imgArr[index],
                isCicle: false,
              ),
              const SizedBox(height: 5),
              Text(titleArr[index], style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
              const SizedBox(height: 5,),
              Text('$count개의 게시글', style: TextStyle(color: CustomColors().darkGrey)),
            ],
          );
        },
      ),
    );
  }
}
