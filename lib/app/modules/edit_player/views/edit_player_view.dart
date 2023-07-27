import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../player/controllers/player_controller.dart';
import '../controllers/edit_player_controller.dart';

class EditPlayerView extends GetView<EditPlayerController> {
  const EditPlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playerController = Get.find<PlayerController>();
    final playerbyId = playerController.findbyId(Get.arguments);

    controller.name.text = playerbyId.name!;
    controller.email.text = playerbyId.email!;
    controller.phone.text = playerbyId.phone!;
    controller.image.text = playerbyId.image!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Player'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(160),
                    child: CachedNetworkImage(
                      width: 160,
                      height: 160,
                      imageUrl: playerbyId.image!,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930",
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    autocorrect: false,
                    controller: controller.name,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      labelText: AutofillHints.name,
                      hintText: AutofillHints.name,
                      prefixIcon: Icon(
                        Icons.person_outlined,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    autocorrect: false,
                    controller: controller.email,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: AutofillHints.email,
                      hintText: AutofillHints.email,
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    autocorrect: false,
                    controller: controller.phone,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: AutofillHints.telephoneNumber,
                      hintText: AutofillHints.telephoneNumber,
                      prefixIcon: Icon(
                        Icons.phone_outlined,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    autocorrect: false,
                    onTapOutside: (event) => TextInputAction.done,
                    controller: controller.image,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      labelText: AutofillHints.photo,
                      hintText: AutofillHints.photo,
                      prefixIcon: Icon(
                        Icons.image_outlined,
                      ),
                    ),
                    onEditingComplete: () => playerController.editPlayer(
                      Get.arguments,
                      controller.name.text,
                      controller.email.text,
                      controller.phone.text,
                      controller.image.text,
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => playerController.editPlayer(
                        Get.arguments,
                        controller.name.text,
                        controller.email.text,
                        controller.phone.text,
                        controller.image.text,
                      ),
                      child: Text("Submit"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
