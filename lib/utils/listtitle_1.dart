import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/utils/favorite_controller.dart';

class Listtile1 extends StatelessWidget {
  const Listtile1({super.key});

  @override
  Widget build(BuildContext context) {
    FavoriteController favoriteController = Get.put(FavoriteController());
    return ListView.builder(
      shrinkWrap: true,
      itemCount: favoriteController.nameList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(favoriteController.nameList[index].toString()),
          leading: const Icon(Icons.person),
          trailing: Obx(() =>  GestureDetector(
            onTap: () {
              if (favoriteController.favList.contains(favoriteController.nameList[index].toString())) {
                favoriteController.removefromFavorite(favoriteController.nameList[index].toString());
              } else {
                favoriteController.addtoFavorite(favoriteController.nameList[index].toString());
              }
            },
            child: Icon(
              Icons.favorite,
              color: favoriteController.favList.contains(favoriteController.nameList[index].toString())
                  ? Colors.red
                  : Colors.grey,
            ),
          ),)
        );
      },
    );
  }
}
