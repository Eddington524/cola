import 'package:cola/repository/trend_repo.dart';
import 'package:cola/widget/item/trend_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TrendGridView extends StatelessWidget {
  const TrendGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: TrendRepo().loadData(),
        builder: (context, snapshot) {
          var list = snapshot.data ?? [];
          // print(snapshot.data);
          return MasonryGridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 8,
              itemBuilder: (context, index) {
                var item = list[index];
                return TrendItem(
                  itemImgUrl:
                  item.itemThumnail,
                  itemName: item.itemTitle,
                  userImgUrl:
                  item.userImg,
                  userName: item.userName,
                  likeCount: item.likeCount,
                  commentCount: item.commentCount,
                );
              },
          );
        });
  }
}
