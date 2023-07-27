import 'package:get/get.dart';

class PlayerProvider extends GetConnect {
  String url =
      "https://fluttertestapp-3f76c-default-rtdb.asia-southeast1.firebasedatabase.app";

  Future<Response> getPlayer() async {
    return await get('$url/players.json');
  }

  Future<Response> addPlayer(String name, String email, String phone,
      String image, String date) async {
    var body = {
      "name": name,
      "email": email,
      "phone": phone,
      "image": image,
      "createdAt": date,
      "updatedAt": date,
    };
    return await post(
      '$url/players.json',
      body,
    );
  }

  Future<Response> editPlayer(String id, String name, String email,
      String phone, String image, String date) async {
    var body = {
      "name": name,
      "email": email,
      "phone": phone,
      "image": image,
      "updatedAt": date,
    };
    return await patch(
      '$url/players/$id.json',
      body,
    );
  }

  Future<void> deletePlayer(String id) async =>
      await delete('$url/players/$id.json');
}
