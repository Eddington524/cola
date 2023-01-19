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
    // 초기화를 아래에서 해야되는 건지?ㅜㅜ
    super.initState();
    _nestedTabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.orange,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Tab(
              text: 'HOME',
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
          children: [
            Container(
              color: Colors.yellow[200],
              alignment: Alignment.center,
              child: Text(
                'Tab1 View',
                style: TextStyle(
                  fontSize: 30,
                ),
              )
            ),
            Container(
                color: Colors.green[200],
                alignment: Alignment.center,
                child: Text(
                  'Tab2 View',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
            ),
            Container(
                color: Colors.purple[200],
                alignment: Alignment.center,
                child: Text(
                  'Tab3 View',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
            ),
          ],
        ))
      ],
    );
  }
}


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),

        )
    );
  }
}