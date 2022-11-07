import 'package:ceibatest/const.dart';
import 'package:ceibatest/views/posts_tile.dart';
import 'package:flutter/material.dart';
import 'package:ceibatest/models/posts.dart';

class PostTile extends StatelessWidget {
  final Posts post;
  const PostTile(this.post, {super.key});

  @override
  Widget build(BuildContext context) {
    if(post.userId == theid){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(post.title ?? "", style: TextStyle(fontWeight: FontWeight.bold),),
              Divider(),
              Text(post.body ?? ""),

            ],
          ),
        ),
      ),
    );}else{
      return Visibility(
        visible: false,
        child: Card(),
      );
    }
  }
}
