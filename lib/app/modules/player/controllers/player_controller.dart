import 'package:get/get.dart';

import '../../player/providers/player_provider.dart';
import '../player_model.dart';

class PlayerController extends GetxController with StateMixin<List<Player>> {
  final playerProvider = Get.find<PlayerProvider>();
  var players = List<Player>.empty().obs;

  void errorDialog(String message) {
    Get.defaultDialog(
      title: "Error",
      middleText: message,
    );
  }

  Player findbyId(String id) => players.firstWhere(
        (element) => element.id == id,
      );

  void addPlayer(String name, String email, String phone, String image) {
    final date = DateTime.now().toIso8601String();

    if (name != "" && email != "" && phone != "") {
      if (GetUtils.isEmail(email)) {
        playerProvider.addPlayer(name, email, phone, image, date).then(
          (response) {
            Player data = Player(
              id: response.body["name"],
              name: name,
              email: email,
              phone: phone,
              image: image,
              createdAt: date,
              updatedAt: date,
            );
            players.add(data);
            change(
              players,
              status: RxStatus.success(),
            );
            Get.back();
          },
        ).catchError(
          (e) {
            change(
              players,
              status: RxStatus.error(
                e.toString(),
              ),
            );
          },
        );
      } else {
        errorDialog("Email is not valid");
      }
    } else {
      errorDialog("Fill all data");
    }
  }

  void editPlayer(
      String id, String name, String email, String phone, String image) {
    var data = findbyId(id);
    final date = DateTime.now().toIso8601String();

    if (name != "" && email != "" && phone != "") {
      if (GetUtils.isEmail(email)) {
        playerProvider.editPlayer(id, name, email, phone, image, date).then(
          (response) {
            data.updatedAt = date;
            data.name = name;
            data.email = email;
            data.phone = phone;
            data.image = image;
            players.refresh();

            change(
              players,
              status: RxStatus.success(),
            );
            Get.back();
          },
        ).catchError(
          (e) {
            change(
              players,
              status: RxStatus.error(
                e.toString(),
              ),
            );
          },
        );
      } else {
        errorDialog("Email is not valid");
      }
    } else {
      errorDialog("Fill all data");
    }
  }

  void deletePlayer(String id) {
    playerProvider.deletePlayer(id).then(
      (value) {
        players.removeWhere((element) => element.id == id);
        change(
          players,
          status: RxStatus.success(),
        );
      },
    ).catchError(
      (e) {
        change(
          players,
          status: RxStatus.error(
            e.toString(),
          ),
        );
      },
    );
  }

  @override
  void onInit() {
    super.onInit();

    players = RxList<Player>.empty();

    playerProvider.getPlayer().then(
      (response) {
        if (response.hasError) {
          change(
            players,
            status: RxStatus.error(),
          );
        } else {
          var getData = response.body;

          if (GetUtils.isNull(getData)) {
            change(
              players,
              status: RxStatus.empty(),
            );
          } else {
            getData.forEach(
              (key, value) {
                var data = Player.fromJson(value);
                players.add(data);
                change(
                  players,
                  status: RxStatus.success(),
                );
              },
            );
          }
        }
      },
    );
  }
}
