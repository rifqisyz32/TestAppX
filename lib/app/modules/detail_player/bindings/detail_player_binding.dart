import 'package:get/get.dart';

import '../controllers/detail_player_controller.dart';

class DetailPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPlayerController>(
      () => DetailPlayerController(),
    );
  }
}
