import 'dart:async';
import '../model/content.dart';
import '../api/content_api.dart';

class ContentBloc {
  final ContentAPI api;

  StreamController<List<Content>> ctrl = StreamController.broadcast();
  Stream<List<Content>> get results => ctrl.stream;

  ContentBloc(this.api);

  void dispose() {
    ctrl.close();
  }

  void getContent() {
    api.getContent().then((contents) {
      ctrl.add(contents);
    });
  }
}
