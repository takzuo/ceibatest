import 'package:http/http.dart' as http;
import 'package:ceibatest/models/user.dart';
import 'package:ceibatest/models/posts.dart';

class RemoteServices {
  static var client = http.Client();


static Future<List<User>> fetchUsers() async {
    var response = await client.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return userFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }

  static Future<List<Posts>> fetchPosts() async {
    var response = await client.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return postsFromJson(jsonString);
    } else {
      //show error message
      return [];
    }
  }


}
