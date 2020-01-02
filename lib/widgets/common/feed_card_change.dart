import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:zamboanga_app_ui/models/saved_places.dart';
import 'package:zamboanga_app_ui/widgets/places/place_page.dart';

// ignore: must_be_immutable
class ReportFeed extends StatelessWidget {
  ReportFeed({
    this.image,
    this.type,
    this.date,
    this.time,
    this.details,
    this.location,
  });

  List<String> image;
  List<String> type;
  List<String> date;
  List<String> details;
  List<String> time;
  List<String> location;

  @override
  Widget build(BuildContext context) {
    if (type.length == 0) {
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: type.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 10,
                children: <Widget>[
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: AutoSizeText(
                                type[index].toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )),
                          Wrap(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Text(date[index]),
                              Text(" "),
                              Text(time[index]),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.18,
                    child: AutoSizeText(
                      details[index],
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width - 80),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 18),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

// ignore: must_be_immutable
class NewsFeed extends StatelessWidget {
  NewsFeed({
    this.profilepic,
    this.headline,
    this.date,
    this.time,
    this.body,
    this.location,
  });

  List<String> profilepic;
  List<String> headline;
  List<String> date;
  List<String> body;
  List<String> time;
  List<String> location;

  @override
  Widget build(BuildContext context) {
    if (headline.length == 0) {
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: headline.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 10,
                children: <Widget>[
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      CircleAvatar(
                          child: ClipOval(
                              child: Image.network(
                        profilepic[index],
                        fit: BoxFit.cover,
                      ))),
                      Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: AutoSizeText(
                                headline[index].toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )),
                          Wrap(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Text(date[index]),
                              Text(" "),
                              Text(time[index]),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.18,
                    child: AutoSizeText(
                      body[index],
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width - 80),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 18),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

// ignore: must_be_immutable
class JobFeed extends StatelessWidget {
  List<String> jobTitle = ["JOB 1", "JOB 2"];
  List<String> companyName = ["Company Name", "Company Name"];
  List<String> date = ["12/22/19", "12/22/19"];
  List<String> time = ["5:15 PM", "1:01 PM"];
  List<String> details = ["Job Details", "Job Details"];

  @override
  Widget build(BuildContext context) {
    if (jobTitle.length == 0) {
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: jobTitle.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 10,
                children: <Widget>[
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: AutoSizeText(
                                jobTitle[index].toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )),
                          Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: AutoSizeText(
                                companyName[index],
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              )),
                          Wrap(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Text("Applied on ${date[index]}"),
                              Text(" "),
                              Text(time[index]),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.18,
                    child: AutoSizeText(
                      details[index],
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width - 80),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 18),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

class PlaceFeed extends StatefulWidget {
  @override
  _PlaceFeedState createState() => _PlaceFeedState();
}

class _PlaceFeedState extends State<PlaceFeed> {
  @override
  Widget build(BuildContext context) {
    final SavedPlace savedPlace = Provider.of<SavedPlace>(context);

    if (savedPlace.placeName.length == 0) {
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: savedPlace.placeName.length,
        itemBuilder: (BuildContext context, index) {
          return Card(
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Wrap(
                direction: Axis.vertical,
                spacing: 10,
                children: <Widget>[
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 10,
                    runSpacing: 10,
                    children: <Widget>[
                      Wrap(
                        direction: Axis.vertical,
                        children: <Widget>[
                          Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: AutoSizeText(
                                savedPlace.placeName[index].toUpperCase(),
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )),
                          Wrap(
                            direction: Axis.horizontal,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 15,
                              ),
                              Text(" "),
                              Text(savedPlace.location[index]),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.18,
                    child: AutoSizeText(
                      savedPlace.location[index],
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width - 80),
                    child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios, size: 18),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  PlacePage(placeIndex: savedPlace.index[index]),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
