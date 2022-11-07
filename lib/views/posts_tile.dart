import 'package:ceibatest/models/user.dart';
import 'package:flutter/material.dart';

class PostsTile extends StatelessWidget {
  final int id;
  const PostsTile({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("ohhs"),),
      body: Text(id.toString()),
    );

  }
}
