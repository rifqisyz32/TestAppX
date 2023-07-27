import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../app/routes/app_pages.dart';

class ItemView extends GetView {
  const ItemView({
    Key? key,
    this.data,
    this.id,
  }) : super(key: key);

  final data, id;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: CachedNetworkImage(
          alignment: Alignment.center,
          height: 40,
          width: 40,
          fit: BoxFit.cover,
          imageUrl: data.image,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg?20200913095930",
          ),
        ),
      ),
      title: Text(data.name),
      subtitle: Text(data.email),
      trailing: Text(
        DateFormat.jm().format(
          DateTime.parse(data.updatedAt),
        ),
      ),
      onTap: () => Get.toNamed(
        Routes.DETAIL_PLAYER,
        arguments: id,
      ),
    );
  }
}
