import 'package:get/get.dart';

import '../controllers/add_player_controller.dart';

class AddPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPlayerController>(
      () => AddPlayerController(),
    );
  }
}
