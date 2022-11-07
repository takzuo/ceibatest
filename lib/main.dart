import 'package:ceibatest/views/posts_tile.dart';
import 'package:flutter/material.dart';
import 'package:ceibatest/views/homepage.dart';
import 'package:ceibatest/const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ceiba Test',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/homepage": (context) => HomePage(),
        "/poststile": (context) => PostsTile(id: theid),
      },
    );
  }
}

