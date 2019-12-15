import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zamboanga_app_ui/widgets/places/saved_places.dart';

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

class JobFeed extends StatelessWidget {
  JobFeed({
    this.jobTitle,
    this.companyName,
    this.date,
    this.time,
    this.details,
  });

  List<String> jobTitle;
  List<String> companyName;
  List<String> date;
  List<String> time;
  List<String> details;

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

class PlaceFeed extends StatefulWidget {
  List savedPlace;

  PlaceFeed({Key key, this.savedPlace}) : super(key: key);
  @override
  _PlaceFeedState createState() => _PlaceFeedState();
}

class _PlaceFeedState extends State<PlaceFeed> {

  @override
  Widget build(BuildContext context) {
    if (widget.savedPlace.length == 0) {
      return Container();
    } else {
      return ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: widget.savedPlace.length,
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
                                widget.savedPlace[index].placeName
                                    .toUpperCase(),
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
                              Text(widget.savedPlace[index].location),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.18,
                    child: AutoSizeText(
                      widget.savedPlace[index].details,
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
