
import 'dart:convert';
import 'package:get/get.dart';

List<Posts> productFromJson(String str) =>
    List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String productToJson(List<Posts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  Posts({
    this.id,
    this.userId,
    this.title,
    this.body,

  });

  final int? id;
  final String? userId;
  final String? title;
  final String? body;

  var isFavorite = false.obs;

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["id"],
    userId: json["userId"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "title": title,
    "body": body,
  };
}
