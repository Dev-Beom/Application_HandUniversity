class Content {
  int userId;
  int id;
  String title;
  bool completed;

  Content(this.userId, this.id, this.title, this.completed);

  Content.fromJson(Map json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];
}
