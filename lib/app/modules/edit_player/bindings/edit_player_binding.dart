import 'package:get/get.dart';

import '../controllers/edit_player_controller.dart';

class EditPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPlayerController>(
      () => EditPlayerController(),
    );
  }
}
