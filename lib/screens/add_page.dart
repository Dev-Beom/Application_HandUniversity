import 'package:application_handuniversity/bloc/content_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final contentBloc = ContentProvider.of(context);
    contentBloc.getContent();

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CupertinoButton(
                  child: Text("뒤로가기"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Flexible(
                child: StreamBuilder(
                  stream: contentBloc.results,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      print("!snapshot.hasdata");
                      return CircularProgressIndicator();
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) => _buildTile(
                            snapshot: snapshot, index: index, context: context),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(
      {AsyncSnapshot snapshot,
      int index,
      BuildContext context,
      String title,
      Icon icon}) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double buttonWidth = screenWidth - (screenWidth / 4);
    double buttonHeight = 80;
    var buttonTitle = snapshot.data[index].title;
    var buttonId = snapshot.data[index].id.toString();

    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Container(
        // width: buttonWidth,
        height: buttonHeight,
        child: CupertinoButton(
          onPressed: () {},
          color: Colors.blue[700],
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonId,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  buttonTitle,
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
