import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTile(context: context, title: "안녕하세요"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile({BuildContext context, String title, Icon icon}) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth - (screenWidth / 4);
    double buttonHeight = 80;
    String buttonTitle = title;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        child: FlatButton(
          onPressed: () {},
          color: Colors.blue[700],
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonTitle,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
