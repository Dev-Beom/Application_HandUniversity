import 'package:flutter/material.dart';
import 'post_bloc.dart';
import '../api/post_api.dart';

class PostProvider extends InheritedWidget {
  final PostBloc postBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static PostBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(PostProvider) as PostProvider)
          .postBloc;

  PostProvider({Key key, PostBloc postBloc, Widget child})
      : this.postBloc = postBloc ?? PostBloc(PostAPI()),
        super(child: child, key: key);
}
