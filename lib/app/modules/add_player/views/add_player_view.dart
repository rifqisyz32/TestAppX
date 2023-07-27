import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../player/controllers/player_controller.dart';
import '../controllers/add_player_controller.dart';

class AddPlayerView extends GetView<AddPlayerController> {
  const AddPlayerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final playerController = Get.find<PlayerController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Player'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
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
            controller: controller.image,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              labelText: AutofillHints.photo,
              hintText: AutofillHints.photo,
              prefixIcon: Icon(
                Icons.image_outlined,
              ),
            ),
            onEditingComplete: () => playerController.addPlayer(
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
              onPressed: () => playerController.addPlayer(
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
    );
  }
}
