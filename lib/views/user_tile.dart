import 'package:ceibatest/const.dart';
import 'package:ceibatest/views/posts_tile.dart';
import 'package:flutter/material.dart';
import 'package:ceibatest/models/user.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.name ?? "", style: const TextStyle(fontWeight: FontWeight.bold, color: primaryColor),),
              Row(
                children: [
                  Icon(Icons.phone, color: primaryColor, size: 20,),
                  Text(user.phone ?? ""),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.email, color: primaryColor, size: 20,),
                  Text(user.email ?? ""),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  GestureDetector(
                      onTap: (){
                        theid = user.id ?? 0;
                        Navigator.pushNamed(context, "/postspage");
                      },
                      child: const Text("VER PUBLICACIONES", style: TextStyle(color: primaryColor),)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
