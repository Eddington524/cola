import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';

class GridviewPage extends StatefulWidget {
  GridviewPage({Key? key}) : super(key: key);

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  final List<String> imgArr = [
    'https://mdl.artvee.com/ft/306637mil.jpg',
    'https://mdl.artvee.com/ft/503052mab.jpg',
    'https://mdl.artvee.com/ft/600716man.jpg',
    'https://mdl.artvee.com/ft/403304mfg.jpg',
    'https://mdl.artvee.com/ft/302383mil.jpg',
    'https://mdl.artvee.com/ft/100741mpo.jpg',
    'https://mdl.artvee.com/ft/100429mpo.jpg',
    'https://mdl.artvee.com/ft/500430mab.jpg',
    'https://mdl.artvee.com/ft/500430mab.jpg',
    'https://mdl.artvee.com/ft/500430mab.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: imgArr.length,
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.2 / 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                ItemImage(
                    width: 185,
                    height: 185,
                    imgUrl: imgArr[index],
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
                  child: const ItemImage(
                      width: 35,
                      imgUrl:
                          'https://avatars.githubusercontent.com/u/56524770?v=4',
                      isCicle: true),
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
                    child: Text('스폰지밥 cgv'),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Text('택배거래'),
                        Text(' 40,000원'),
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
  }
}
