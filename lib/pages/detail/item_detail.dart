import 'package:cola/model/model.dart';
import 'package:cola/theme/custom_color.dart';
import 'package:cola/widget/box.dart';
import 'package:cola/widget/item_image.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  final DetailItem item;

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {

  bool isMyLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_border)),
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ItemImage(
                            width: 50,
                            imgUrl: widget.item.userImgUrl,
                            isCicle: true),
                        SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.item.userName, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            Text(widget.item.uploadDate,  style: TextStyle(fontSize: 10),)
                          ],
                        )
                      ],
                    ),
                    Box(
                        w: 50,
                        h: 30,
                        bgColor: CustomColors().lightOrange,
                        text: '팔로우',
                        textColor: Colors.white)
                  ],
                ),
              ),
             Image.network(widget.item.detailImage, fit: BoxFit.contain,),
              // ItemImage(imgUrl: widget.item.detailImage, isCicle: false),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  LikeButton(
                    size: 20,
                    isLiked: isMyLiked,
                    likeCount: isMyLiked ? widget.item.likeCount+1 : widget.item.likeCount
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.comment_outlined)),
                  Text('${widget.item.commentCount}'),
                ],
              ),
              Text('${widget.item.itemTitle}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text('${widget.item.detailContents}', style: TextStyle(fontSize: 15), textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Box(
                        w: 60,
                        h: 30,
                        bgColor: CustomColors().mainBlue,
                        text: '${widget.item.tags[0]}',
                        textColor: Colors.white),
                    SizedBox(width: 10,),
                    Box(
                        w: 60,
                        h: 30,
                        bgColor: CustomColors().mainBlue,
                        text: '${widget.item.tags[1]}',
                        textColor: Colors.white)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
