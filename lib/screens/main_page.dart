import 'package:application_handuniversity/bloc/content_provider.dart';
import 'package:application_handuniversity/screens/add_page.dart';
import 'package:flutter/cupertino.dart';
import 'swiper.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: ListView(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    _buildTitleTile(context),
                    _buildContentTile(
                        index: 1, title: "cc", context: context, option: true),
                    _buildContentTile(
                        index: 1, title: "cc", context: context, option: true),
                    _buildContentTile(
                        index: 2, title: "aa", context: context, option: true),
                    _buildContentTile(index: 3, title: "dd", context: context),
                    _buildContentTile(index: 4, title: "dd", context: context),
                    _buildAddTile(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitleTile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(70, 10, 60, 0),
      child: Text(
        "현재 구독중인 컨텐츠 ✌",
        style: TextStyle(
            fontSize: 22, color: Colors.grey[800], fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildAddTile(BuildContext context) {
    double buttonHeight = 70;
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
      child: Container(
        height: buttonHeight,
        child: CupertinoButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddPage(),
              ),
            );
          },
          color: Colors.grey,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.add,
                  size: 30,
                ),
                Text(
                  "추가하기",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContentTile(
      {int index, BuildContext context, String title, Icon icon, bool option}) {
    double buttonHeight = 70;
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
      child: Container(
        height: buttonHeight,
        child: option == true
            ? CupertinoButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SwiperPage(),
                    ),
                  );
                },
                color: Colors.lightGreen[400],
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              )
            : CupertinoButton(
                onPressed: () {},
                color: Colors.grey[350],
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "비어있음",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
