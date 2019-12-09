import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/common/home.dart';
import 'package:zamboanga_app_ui/widgets/common/drawer_visibility.dart';
import 'package:zamboanga_app_ui/widgets/common/change_menu_card.dart';
import 'package:zamboanga_app_ui/widgets/common/feed_card_change.dart';

class CitizenReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
        appBarTitle: "Citizen Report",
        feedTitle: "Reports Sent",
        showDrawer: DrawerVisibility(visibility: VisibilityFlag.gone),
        menuCardType: ChangeMenuCard(change: ChangeMenuCardFlag.citizen_report,),
        feedCardType: ReportFeed(

        ),
        bannerImage: "images/homepage_banner.png",
      );

  }
}
