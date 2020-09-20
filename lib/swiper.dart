import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:application_handuniversity/bloc/post_provider.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

<<<<<<< Updated upstream:lib/swiper.dart
class Swiperpage extends StatelessWidget {
=======
// class SwiperPag extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: new Swiper(
//         itemBuilder: (BuildContext context, int index) {
//           // return new Image.asset('assets/1.png');
//           return Flexible(
//             child: StreamBuilder(
//                 stream: postBloc.results,
//                 builder: (context, snapshot) {
//                   if (!snapshot.hasData) {
//                     print("!snapshot.hasdata");
//                     return Text("No Data");
//                   } else {
//                     return ListView.builder(
//                         itemCount: snapshot.data.length,
//                         itemBuilder: (context, index) => _buildTile(
//                             snapshot: snapshot,
//                             index: index,
//                             context: context));
//                   }
//                 }),
//           );
//         },
//         indicatorLayout: PageIndicatorLayout.NONE,
//         autoplay: false,
//         itemCount: 3,
//         pagination: new SwiperPagination(builder: SwiperPagination.fraction),
//         control: new SwiperControl(iconNext: null, iconPrevious: null),
//       ),
//     );
//   }
// }

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  void initState() {
    super.initState();
  }

>>>>>>> Stashed changes:lib/screens/swiper.dart
  @override
  Widget build(BuildContext context) {
    final postBloc = PostProvider.of(context);
    postBloc.getContent();

    return Scaffold(
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          // return new Image.asset('assets/1.png');
          return Flexible(
            child: StreamBuilder(
                stream: postBloc.results,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    print("!snapshot.hasdata");
                    return Text("데이터 불러오는 중");
                  } else {
                    return _postBuilder();
                    // return ListView.builder(
                    //     itemCount: snapshot.data.length,
                    //     itemBuilder: (context, index) => _postBuilder(
                    //         snapshot: snapshot,
                    //         index: index,
                    //         context: context));
                  }
                }),
          );
        },
        indicatorLayout: PageIndicatorLayout.NONE,
        autoplay: false,
        itemCount: 3,
        pagination: new SwiperPagination(builder: SwiperPagination.fraction),
        control: new SwiperControl(iconNext: null, iconPrevious: null),
      ),
    );
  }
}

Widget _postBuilder(
    {AsyncSnapshot snapshot,
    int index,
    BuildContext context,
    String title,
    Icon icon}) {
  // double screenWidth = MediaQuery.of(context).size.width;
  // double buttonWidth = screenWidth - (screenWidth / 4);
  double buttonHeight = 80;
  // var buttonTitle = snapshot.data[index].title;
  // var buttonId = snapshot.data[index].id.toString();
  var postbody = snapshot.data[index].body;
  var identifier = snapshot.data[index].id.toString();

  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
    child: Center(
      child: Text(
        postbody,
        style: TextStyle(color: Colors.white10, fontSize: 10),
      ),
    ),
    // child: Container(
    //   // width: buttonWidth,
    //   height: buttonHeight,
    //   child: FlatButton(
    //     onPressed: () {},
    //     color: Colors.blue[700],
    //     child: Container(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             buttonId,
    //             style: TextStyle(color: Colors.white, fontSize: 12),
    //           ),
    //           Text(
    //             buttonTitle,
    //             style: TextStyle(color: Colors.white, fontSize: 12),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // ),
  );
}
