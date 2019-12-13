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
        showDrawer: DrawerVisibility(visibility: VisibilityFlag.gone,),
        menuCardType: ChangeMenuCard(change: ChangeMenuCardFlag.peso_job_listing,),
        feedCardType: JobFeed(
          jobTitle: ["JOB 1", "JOB 2"],
          companyName: ["DOLE", "DICT"],
          date: ["12/22/19","12/22/19"],
          time: ["5:15","1:01"],
          details: ["Job Details","Job Details"],
        ),
        bannerImage: "images/peso_job_banner.png",

      );

  }
}
