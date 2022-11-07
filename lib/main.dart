import 'package:ceibatest/repository/db_services.dart';
import 'package:ceibatest/views/posts_tile.dart';
import 'package:ceibatest/views/postspage.dart';
import 'package:flutter/material.dart';
import 'package:ceibatest/views/homepage.dart';
import 'package:ceibatest/const.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDataSource = await DbDataSource.init();
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
        "/postspage": (context) => PostPage(),
      },
    );
  }
}

