import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../player/controllers/player_controller.dart';
import '../controllers/detail_player_controller.dart';

class DetailPlayerView extends GetView<DetailPlayerController> {
  const DetailPlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playerbyId = Get.find<PlayerController>().findbyId(Get.arguments);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Player'),
        actions: [
          IconButton(
            onPressed: () =>
                Get.toNamed(Routes.EDIT_PLAYER, arguments: Get.arguments),
            icon: Icon(
              Icons.edit_outlined,
            ),
          ),
        ],
      ),
      body: Get.find<PlayerController>().obx(
        (data) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(160),
                  child: CachedNetworkImage(
                    width: 160,
                    height: 160,
                    imageUrl: playerbyId.image!,
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930",
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minLeadingWidth: 16,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_outlined,
                      ),
                    ],
                  ),
                  title: Text(playerbyId.name!),
                  subtitle: Text(AutofillHints.name),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minLeadingWidth: 16,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                      ),
                    ],
                  ),
                  title: Text(playerbyId.email!),
                  subtitle: Text(AutofillHints.email),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minLeadingWidth: 16,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_outlined,
                      ),
                    ],
                  ),
                  title: Text(playerbyId.phone!),
                  subtitle: Text(AutofillHints.telephoneNumber),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  minLeadingWidth: 16,
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_outlined,
                      ),
                    ],
                  ),
                  title: Text(playerbyId.image!),
                  subtitle: Text(AutofillHints.photo),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
