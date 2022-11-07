import 'package:ceibatest/const.dart';
import 'package:ceibatest/controllers/posts_controller.dart';
import 'package:ceibatest/views/posts_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostPage extends StatelessWidget {
  final PostController postsController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Posts "),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [
                Icon(Icons.search)
                // TEXTFIELD BUSCADOR
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (postsController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: postsController.postList.length,
                  itemBuilder: (context, index) {
                    print(postsController.postList);
                    return PostTile(postsController.postList[index]);
                  },
                  //staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}
