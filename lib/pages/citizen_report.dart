import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/common/home.dart';
import 'package:zamboanga_app_ui/widgets/common/drawer_visibility.dart';
import 'package:zamboanga_app_ui/widgets/common/menu_card_change.dart';
import 'package:zamboanga_app_ui/widgets/common/feed_card_change.dart';

class CitizenReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home(
      appBarTitle: "Citizen Report",
      feedTitle: "Reports Sent",
      showDrawer: DrawerVisibility(visibility: VisibilityFlag.gone),
      menuCardType: ChangeMenuCard(
        change: ChangeMenuCardFlag.citizen_report,
      ),
      feedCardType: ReportFeed(
        type: ["CRIME", "FIRE", "FLOOD"],
        date: ['12/13/19', '12/10/19', '12/07/19'],
        time: ['12:54PM', '11:23AM', '1:54PM'],
        image: [
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
          "https://scontent.fmnl4-3.fna.fbcdn.net/v/t1.0-9/p960x960/50577954_10156190884733014_3486177305796018176_o.jpg?_nc_cat=110&_nc_eui2=AeH8-XiVCwEkD_7cCjRbx8yY55NlDwCGns0tZw18cPElOGO4XVEJB20pdNhuFgKTW2y0hXr0S1sgxyAH63wHaWhEKfkhX-FBNV3CAYKJBTEoIg&_nc_ohc=8ACB3V4XOJcAQnSUxts4uiMfqDYAk6WqqqGGmOtGI4mIXcBdzhnvEPU7A&_nc_ht=scontent.fmnl4-3.fna&oh=dae5b19e03a03403efde35165eb56595&oe=5E755E22",
        ],
        location: ["Brgy. Baliwasan", "Brgy. San Roque", "Brgy. Putik"],
        details: ["Details", "", ""],
      ),
      bannerImage: "images/homepage_banner.png",
    );
  }
}
