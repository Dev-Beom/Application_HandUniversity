import 'dart:async';
import 'package:application_handuniversity/model/post.dart';
import '../api/post_api.dart';

class PostBloc {
  final PostAPI papi;

  StreamController<List<Post>> ctrll = StreamController.broadcast();
  Stream<List<Post>> get results => ctrll.stream;

  PostBloc(this.papi);

  void dispose() {
    ctrll.close();
  }

  void getPost() {
    papi.getPost().then((posts) {
      ctrll.add(posts);
    });
  }
}
