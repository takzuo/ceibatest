class UserPosts{
  final String title;
  final String body;

  UserPosts.fromJson(Map<String, dynamic> json)
  : title = json['title'],
   body = json['body'];

}