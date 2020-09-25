import 'package:application_handuniversity/screens/main_page.dart';
import 'package:application_handuniversity/bloc/post_bloc.dart';
import 'package:application_handuniversity/bloc/post_provider.dart';
import 'package:application_handuniversity/api/post_api.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PostProvider(
      postBloc: PostBloc(PostAPI()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}
