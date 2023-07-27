import 'package:get/get.dart';

import '../../player/providers/player_provider.dart';
import '../controllers/player_controller.dart';

class PlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerController>(
      () => PlayerController(),
    );
    Get.lazyPut<PlayerProvider>(
      () => PlayerProvider(),
    );
  }
}
