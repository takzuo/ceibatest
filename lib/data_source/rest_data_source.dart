import 'dart:convert';

import 'package:ceibatest/models/user_data.dart';
import 'package:ceibatest/models/user_posts.dart';
import 'package:http/http.dart' as http;

class RestDataSource{
  static const String _baseUrl = 'jsonplaceholder.typicode.com';
  static const String _name = '/users';
  static const String _posts = '/posts';

  final http.Client _httpClient;

  RestDataSource({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<T> _callGetApi<T>({
    required String endpoint,
    required T Function(List<dynamic> data) builder,
  })async{
    var uri = Uri.https(_baseUrl, endpoint);

    final response = await _httpClient.get(uri);
     return builder(jsonDecode(response.body));
  }

   Future<UserData> getData() async{
    return _callGetApi(
        endpoint: _name,
        builder: (data) => UserData.fromJson(data[0]),

    );
  }


  Future<UserPosts> getPosts() async{
    return _callGetApi(
        endpoint: _posts,
        builder: (data) => UserPosts.fromJson(data[0]),
    );
  }


}