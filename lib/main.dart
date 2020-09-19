import 'package:application_handuniversity/screens/add_page.dart';
import 'package:application_handuniversity/screens/main_page.dart';
import 'package:application_handuniversity/bloc/content_bloc.dart';
import 'package:application_handuniversity/bloc/content_provider.dart';
import 'package:application_handuniversity/api/content_api.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ContentProvider(
      contetnBloc: ContentBloc(ContentAPI()),
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
