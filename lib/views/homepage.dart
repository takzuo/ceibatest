import 'package:ceibatest/const.dart';
import 'package:ceibatest/controllers/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:ceibatest/controllers/user_controller.dart';
import 'package:ceibatest/views/user_tile.dart';

class HomePage extends StatelessWidget {
  final UserController usersController = Get.put(UserController());
  final myController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
       title: const Text("Prueba de Ingreso"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children:  [
                Icon(Icons.search),
                Container(
                  width: MediaQuery.of(context).size.width - 80,
                  child: TextField(
                    controller: myController,
                    showCursor: true,
                  ),
                )
                // TEXTFIELD BUSCADOR
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (usersController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: usersController.userList.length,
                  itemBuilder: (context, index) {
                    myController.addListener(() {
                      searchUser = myController.text;
                    });
                     return UserTile(usersController.userList[index]);
                    },
                );
              }
            }),
          )
        ],
      ),
    );
  }

}
