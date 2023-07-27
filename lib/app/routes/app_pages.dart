import 'package:get/get.dart';

import '../modules/add_player/bindings/add_player_binding.dart';
import '../modules/add_player/views/add_player_view.dart';
import '../modules/detail_player/bindings/detail_player_binding.dart';
import '../modules/detail_player/views/detail_player_view.dart';
import '../modules/edit_player/bindings/edit_player_binding.dart';
import '../modules/edit_player/views/edit_player_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/player/bindings/player_binding.dart';
import '../modules/player/views/player_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PLAYER,
      page: () => const PlayerView(),
      binding: PlayerBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PLAYER,
      page: () => const AddPlayerView(),
      binding: AddPlayerBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PLAYER,
      page: () => const EditPlayerView(),
      binding: EditPlayerBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PLAYER,
      page: () => const DetailPlayerView(),
      binding: DetailPlayerBinding(),
    ),
  ];
}
