import 'package:flutter/material.dart';
import 'content_bloc.dart';
import '../api/content_api.dart';

class ContentProvider extends InheritedWidget {
  final ContentBloc contentBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static ContentBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ContentProvider) as ContentProvider)
          .contentBloc;

  


  ContentProvider({Key key, ContentBloc contetnBloc, Widget child})
      : this.contentBloc = contetnBloc ?? ContentBloc(ContentAPI()),
        super(child: child, key: key);
}
