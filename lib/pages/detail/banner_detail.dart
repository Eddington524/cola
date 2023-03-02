import 'package:cola/repository/event_repo.dart';
import 'package:flutter/material.dart';

class BannerDetail extends StatefulWidget {
  final int id;

  const BannerDetail({Key? key, required this.id}) : super(key: key);

  @override
  State<BannerDetail> createState() => _BannerDetailState();
}

class _BannerDetailState extends State<BannerDetail> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이벤트'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
            future: EventRepo().loadData(widget.id),
            builder: (context, snapshot) {
             if(snapshot.hasData){
               print(snapshot.data);
               ///todo 배너 데이터 받아오기
               return Text(snapshot.data![0].detailImgUrl);
             }else{
               return Text('...');
             }
            })
        ,
      )
      ,
    );
  }
}
