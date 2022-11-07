import 'package:ceibatest/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:ceibatest/controllers/user_controller.dart';
import 'package:ceibatest/views/user_tile.dart';

class HomePage extends StatelessWidget {
  final UserController productController = Get.put(UserController());

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
              children: const [
                Icon(Icons.search)
                // TEXTFIELD BUSCADOR
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (productController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                  itemCount: productController.userList.length,
                  itemBuilder: (context, index) {
                    return UserTile(productController.userList[index]);
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
