import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/common/home.dart';
import 'package:zamboanga_app_ui/widgets/common/drawer_visibility.dart';
import 'package:zamboanga_app_ui/widgets/common/menu_card_change.dart';
import 'package:zamboanga_app_ui/widgets/common/feed_card_change.dart';

class PesoJobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
      appBarTitle: "PESO Job Listing",
      feedTitle: "Applied Jobs",
      showDrawer: DrawerVisibility(
        visibility: VisibilityFlag.gone,
      ),
      menuCardType: ChangeMenuCard(
        change: ChangeMenuCardFlag.peso_job_listing,
      ),
      feedCardType: JobFeed(),
      bannerImage: "images/peso_job_banner.png",
    );
  }
}
