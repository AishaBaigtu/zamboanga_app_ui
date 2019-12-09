import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/common/home.dart';
import 'package:zamboanga_app_ui/widgets/common/drawer_visibility.dart';
import 'package:zamboanga_app_ui/widgets/common/change_menu_card.dart';
import 'package:zamboanga_app_ui/widgets/common/feed_card_change.dart';

class Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
        appBarTitle: "Places",
        feedTitle: "Saved Places",
        showDrawer: DrawerVisibility(visibility: VisibilityFlag.gone,),
        menuCardType: ChangeMenuCard(change: ChangeMenuCardFlag.places),
        feedCardType: PlaceFeed(),
        bannerImage: "images/homepage_banner.png",
      );
  }
}
