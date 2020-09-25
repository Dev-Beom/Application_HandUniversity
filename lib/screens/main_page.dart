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
                    _buildContentTile(index: 1, title: "cc", context: context),
                    _buildContentTile(index: 2, title: "aa", context: context),
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

  Widget _buildAddTile(BuildContext context) {
    double buttonHeight = 80;
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
                Icon(CupertinoIcons.add),
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
    double buttonHeight = 80;
    return Padding(
      padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
      child: Container(
        height: buttonHeight,
        child: CupertinoButton(
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
        ),
      ),
    );
  }
}
