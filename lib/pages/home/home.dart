import 'package:cola/pages/home/tab/follow.dart';
import 'package:cola/pages/home/tab/item.dart';
import 'package:cola/pages/home/tab/town.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _nestedTabController;
  // _ private 변수 같은 클래스 내에서만 사용가능?

  @override
  void initState(){
    super.initState();
   _nestedTabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          width: 350,
          height: 50,
            padding: EdgeInsets.only(left: 20),
            // color: Colors.grey,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(Icons.search, size: 30 ),
                // TextField(),
              ],
            ))
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TabBar(
            controller: _nestedTabController,
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: const <Widget>[
              Tab(
                text: 'TOWN',
              ),
              Tab(
                text: 'ITEM',
              ),
              Tab(
                text: 'FOLLOW',
              ),
            ],
          ),
          Expanded(child: TabBarView(
            controller: _nestedTabController,
            children: const [
              TownScreen(),
              ItemScreen(),
              FollowScreen()
            ],
          ))
        ],
      ),
    );
  }
}
