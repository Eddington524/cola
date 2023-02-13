import 'package:flutter/material.dart';

import 'item_image.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final List<String> imgArr = [
    'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
    'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
    'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
    'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
    'https://w0.peakpx.com/wallpaper/954/59/HD-wallpaper-slam-dunk-10-anime-bastquetball-slam-dunk.jpg',
  ];

  final List<String> profilArr = [
    'https://avatars.githubusercontent.com/u/56524770?v=4',
    'https://avatars.githubusercontent.com/u/56524770?v=4',
    'https://avatars.githubusercontent.com/u/56524770?v=4',
    'https://avatars.githubusercontent.com/u/56524770?v=4',
    'https://avatars.githubusercontent.com/u/56524770?v=4'
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
          // todo play item 으로 map 리팩토링
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                ItemImage(
                    width: 90,
                    height: 150,
                    imgUrl: imgArr[index],
                    isCicle: false),
                Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.lightBlueAccent,
                        Colors.orangeAccent,
                      ],
                    ),
                  ),
                  child: ItemImage(
                      width: 30, imgUrl: profilArr[index], isCicle: true),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
