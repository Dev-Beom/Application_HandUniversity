import 'package:application_handuniversity/screens/add_page.dart';
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
            children: [
              Flexible(
                child: ListView(
                  children: [
                    _buildTile(index: 1, title: "cc"),
                    _buildTile(index: 2, title: "aa"),
                    _buildTile(index: 3, title: "dd"),
                    _buildTile(index: 4, title: "dd", context: context),
                    _buildTile(index: 0, title: "dd", context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(
      {int index, BuildContext context, String title, Icon icon, bool option}) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double buttonWidth = screenWidth - (screenWidth / 4);
    double buttonHeight = 80;

    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Container(
        // width: buttonWidth,
        height: buttonHeight,
        child: FlatButton(
          onPressed: () {
            if (index == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddPage()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SwiperPage()));
            }
          },
          color: index == 0 ? Colors.grey : Colors.blue[600],
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  index.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
