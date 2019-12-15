import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Place {
  String placeName;
  String location;
  String details;
  bool halal;
  String image;

  Place({this.placeName, this.location, this.details, this.halal, this.image});

  static List<Place> allPlaces() {
    var listOfPlaces = List<Place>();

    listOfPlaces.add(Place(
        placeName: "dd", location: "aa", details: "aa", halal: true, image: "aa"));
    listOfPlaces.add(Place(
        placeName: "aaa", location: "aa", details: "aa", halal: true, image: "aa"));

    return listOfPlaces;
  }


}
class SavedPlace{
  String placeName;
  String location;
  String details;
  bool halal;
  String image;

  SavedPlace({this.placeName, this.location, this.details, this.halal, this.image});

  static List<SavedPlace> allSavedPlaces() {
    var listOfSavedPlaces = List<SavedPlace>();


    return listOfSavedPlaces;
  }



}

class PlacePage extends StatefulWidget {
  int placeIndex;

  PlacePage({Key key, @required this.placeIndex, }) : super(key: key);

  @override
  _PlacePageState createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {
  static List<Place> allPlaces = Place.allPlaces();
  static List<SavedPlace> allSavedPlaces = SavedPlace.allSavedPlaces();


  Widget build(BuildContext context) {
    final double cardHeight = MediaQuery
        .of(context)
        .size
        .height / 1.6;
    final double cardWidth = MediaQuery
        .of(context)
        .size
        .width / 1.05;

    final alreadySaved =
    allSavedPlaces.contains(allPlaces[widget.placeIndex].placeName);

    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              alreadySaved ? Icons.bookmark : Icons.bookmark_border,
              color: alreadySaved ? Colors.white : null,
            ),
            onPressed: () {
              setState(() {
                allSavedPlaces.add(SavedPlace(
                    placeName: allPlaces[widget.placeIndex].placeName));

              });

              print(allSavedPlaces[4].placeName);
              print(allSavedPlaces.length);
            },
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SafeArea(
                    child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Colors.black,
                            Colors.black,
                            Colors.transparent
                          ],
                        ).createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: SafeArea(
                        top: false,
                        child: Image(
                          image:
                          AssetImage(allPlaces[widget.placeIndex].image),
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 3,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: ((MediaQuery
                            .of(context)
                            .size
                            .height / 3) / 5) * 4,
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
                            padding: const EdgeInsets.all(20),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 10,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width /
                                        1.18,
                                    child: AutoSizeText(
                                      allPlaces[widget.placeIndex].placeName,
                                      style: TextStyle(fontSize: 20),
                                    )),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width / 1.18,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.location_on,
                                        size: 18,
                                      ),
                                      AutoSizeText(
                                        allPlaces[widget.placeIndex].location,
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width / 1.18,
                                  child: AutoSizeText(
                                      allPlaces[widget.placeIndex].details,
                                      style: TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Visibility(
                        visible: allPlaces[widget.placeIndex].halal,
                        child: RawMaterialButton(
                          onPressed: () {},
                          child: Text(
                            "HALAL",
                            style:
                            TextStyle(color: Colors.white, fontSize: 10.0),
                          ),
                          shape: CircleBorder(),
                          elevation: 10.0,
                          fillColor: Colors.black,
                          padding: const EdgeInsets.all(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final getPlace=PlacePage();


