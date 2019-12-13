import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/common/home.dart';
import 'package:zamboanga_app_ui/widgets/common/drawer_visibility.dart';
import 'package:zamboanga_app_ui/widgets/common/menu_card_change.dart';
import 'package:zamboanga_app_ui/widgets/common/feed_card_change.dart';

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
        appBarTitle: "Places",
        feedTitle: "Saved Places",
        showDrawer: DrawerVisibility(visibility: VisibilityFlag.gone,),
        menuCardType: ChangeMenuCard(change: ChangeMenuCardFlag.places),
        feedCardType: PlaceFeed(
          placeName: ["Bay Tal Mal", "Teng's Grill"],
          location: ["ZC","ZC"],
          details: ["details","details"],
        ),
        bannerImage: "images/homepage_banner.png",
      );
  }
}
