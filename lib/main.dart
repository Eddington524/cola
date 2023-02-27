import 'package:cola/pages/plus/plus_page.dart';
import 'package:cola/pages/alarm/alarm.dart';
import 'package:cola/pages/home/home.dart';
import 'package:cola/pages/land/land.dart';
import 'package:cola/pages/myinfo/my_info.dart';
import 'package:cola/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeDate,
      // This is the theme of your application.
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      // primarySwatch: Colors.blue,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  List<Widget> pagesArr = [
    HomePage(),
    LandPage(),
    PlusPage(),
    AlarmPage(),
    MyInfoPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesArr[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int selectedIndex) {
          if(selectedIndex != 2){
            setState(() {
              index = selectedIndex;
            });
          }else{
             showModalBottomSheet(context: context, builder: (context) {
              return Container(
                height: 200,
                color: Colors.greenAccent,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(onTap: () {
                      print('cam');
                      Navigator.pop(context);
                    },child: Text('camera')),
                    SizedBox(height: 50),
                    GestureDetector(onTap: () {
                      print('2');
                      Navigator.pop(context);
                    },child: Text('album')),
                  ],
                ),
              );
            });
          }
        },
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.castle), label: 'land'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'plus'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'myinfo'),
        ],
      ),
    );
  }
}
