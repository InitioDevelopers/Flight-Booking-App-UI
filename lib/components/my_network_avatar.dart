import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/images_utils.dart';
import '../utils/utils.dart';

class MyNetworkImageAvatar extends StatelessWidget {
  final String? filePath;
  final BoxFit? fit;
  final bool? isUser;

  const MyNetworkImageAvatar({
    Key? key,
    @required this.filePath,
    this.fit = BoxFit.fill,
    this.isUser = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: filePath ?? "",
      placeholder: (context, url) =>  Container(
        padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        child: const CircularProgressIndicator(),
        height: 30.0,
        width: 30.0,
      ),
      errorWidget: (context, url, error) => Image.asset(
        appIcon,
        fit: BoxFit.cover,
        height: 50.0,
        width: 50.0,
      ),
    );
  }

  /// get network image or place holder image
  ImageProvider getImageOrPlaceHolderImg() {
    if (!Utils.checkNullOrEmptyString(filePath ?? "") &&
        Utils.checkLocalOrServerImage(filePath ?? "")) {
      return NetworkImage(
        filePath!,
      );
    } else if (!Utils.checkNullOrEmptyString(filePath ?? "")) {
      return AssetImage(filePath!);
    } else {
      return getPlaceHolderImg();
    }
  }

  /// get place holder image
  ImageProvider getPlaceHolderImg() {
    return AssetImage(isUser! ? appIcon : appIcon);
  }
}
