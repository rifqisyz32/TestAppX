import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testappx/app/modules/player/views/item_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/player_controller.dart';

class PlayerView extends GetView<PlayerController> {
  const PlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Players'),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.ADD_PLAYER),
            icon: Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: controller.obx(
        (data) => SafeArea(
          child: ListView.builder(
            itemCount: controller.players.length,
            itemBuilder: (context, index) {
              var id = data![index].id;
              return Dismissible(
                key: UniqueKey(),
                confirmDismiss: (direction) => Get.defaultDialog(
                  title: "Delete Player",
                  middleText: "Delete this player?",
                  textConfirm: "Yes",
                  radius: 16,
                  titlePadding: const EdgeInsets.only(top: 16),
                  contentPadding: const EdgeInsets.only(bottom: 16),
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    controller.deletePlayer(id!);

                    Get.back();
                  },
                  textCancel: "Cancel",
                ),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.blue,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(
                    right: 16,
                  ),
                  child: const Icon(
                    Icons.delete_outline,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
                child: ItemView(
                  data: data[index],
                  id: id,
                ),
              );
            },
          ),
        ),
        onError: (error) => Center(
          child: Text(
            error.toString(),
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        onEmpty: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("No data"),
              OutlinedButton(
                onPressed: () => Get.toNamed(Routes.ADD_PLAYER),
                child: const Text("Add data"),
              ),
            ],
          ),
        ),
        onLoading: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
