import 'package:flutter/material.dart';

abstract class AssetHelper {
  static const assetsPath = "assets/";
  static const imagesPath = assetsPath + "images/";

  static Image getAssetImage(String fileName) {
    return Image(
      image: AssetImage(
        imagesPath + fileName,
      ),
    );
  }

  static Image get googlePlayBadge => getAssetImage("google-play-badge.png");
  static Image get oldTimerIcon => getAssetImage("old_timer_icon.jpg");
  static Image get fudgeIcon => getAssetImage("fudge_icon.png");
  static Image get erikPicture => getAssetImage("profile_picture.jpg");

  static List<Image> get fudgeGallery => [
        getAssetImage("fudge_the_dealer.png"),
        getAssetImage("ring_of_fire.png"),
        getAssetImage("rampage.png"),
        getAssetImage("horse_race.png"),
      ];
}
