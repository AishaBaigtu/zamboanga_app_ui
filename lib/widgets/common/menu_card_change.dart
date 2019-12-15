import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/pages/citizen_report.dart';
import 'package:zamboanga_app_ui/pages/government_directory.dart';
import 'package:zamboanga_app_ui/pages/peso_job_listing.dart';
import 'package:zamboanga_app_ui/pages/places.dart';
import 'package:zamboanga_app_ui/widgets/common/menu_button.dart';
import 'package:zamboanga_app_ui/widgets/citizen_report/report_page.dart';
import 'package:zamboanga_app_ui/widgets/peso_job_listing/job_openings.dart';
import 'package:zamboanga_app_ui/widgets/peso_job_listing/saved_jobs.dart';
import 'package:zamboanga_app_ui/widgets/places/activity_centers.dart';
import 'package:zamboanga_app_ui/widgets/places/restaurants_list.dart';

enum ChangeMenuCardFlag {
  home_page,
  citizen_report,
  peso_job_listing,
  places,

}

class ChangeMenuCard extends StatelessWidget {


  ChangeMenuCard({
    @required this.change,
  });

  final ChangeMenuCardFlag change;


  @override
  Widget build(BuildContext context) {

    final double cardHeight = MediaQuery.of(context).size.height / 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.05;


    _changeMenu(){
      if (change == ChangeMenuCardFlag.home_page){
        return HomePageMenuCard();
      }
      else if (change == ChangeMenuCardFlag.citizen_report){
        return CitizenReportMenuCard();
      }
      else if (change == ChangeMenuCardFlag.peso_job_listing){
        return PJLMenuCard();
      }
      else {
        return PlacesMenuCard();
      }
    }

      return Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: ((MediaQuery.of(context).size.height/3)/5)*4,
          ),
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: _changeMenu(),
              ),
            ),
          ),
        ),
      );

  }
}

class HomePageMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height / 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 4.5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Citizen Report",
              icon: "images/custom_icons_images/citizen_report.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    CitizenReport(),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 4.5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Government Directory",
              icon: "images/custom_icons_images/government_directory.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    GovernmentDirectory(),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 4.5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "PESO Job Listing",
              icon: "images/custom_icons_images/peso_job_listing.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    PesoJobListing(),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 4.5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Places",
              icon: "images/custom_icons_images/places.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    Places(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CitizenReportMenuCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final double cardHeight=MediaQuery.of(context).size.height/5;
    final double cardWidth=MediaQuery.of(context).size.width/1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Crime",
              icon: "images/custom_icons_images/crime.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    ReportPage(appBarTitle:"Crime"),
              ),

            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Fire",
              icon: "images/custom_icons_images/fire.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    ReportPage(appBarTitle: "Fire"),
              ),

            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Flood",
              icon: "images/custom_icons_images/flood.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    ReportPage(appBarTitle: "Flood"),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/5,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Vehicular Accident",
              icon: "images/custom_icons_images/vehicular_accident.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    ReportPage(appBarTitle: "Vehicular Accident"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PJLMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final double screensize=MediaQuery.of(context).size.height;
    final double cardHeight=MediaQuery.of(context).size.height/5;
    final double cardWidth=MediaQuery.of(context).size.width/1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight/1.5,
          width: cardWidth/2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Job Openings",
              icon: "images/custom_icons_images/job_openings.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    JobOpenings(),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight/1.5,
          width: cardWidth/2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Saved Jobs",
              icon: "images/custom_icons_images/saved_jobs.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    SavedJobs(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlacesMenuCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screensize = MediaQuery.of(context).size.height;
    final double cardHeight = MediaQuery.of(context).size.height/ 5;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Restaurants",
              icon: "images/custom_icons_images/job_openings.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    RestaurantsList(),
              ),
            ),
          ),
        ),
        VerticalDivider(),
        Container(
          height: cardHeight / 1.5,
          width: cardWidth / 2.2,
          child: FittedBox(
            fit: BoxFit.contain,
            child: MenuButton(
              title: "Activity Centers",
              icon: "images/custom_icons_images/saved_jobs.png",
              toNextPage: MaterialPageRoute(
                builder: (BuildContext context) =>
                    ActivityCentersList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

