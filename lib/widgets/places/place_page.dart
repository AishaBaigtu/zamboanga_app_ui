import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'restaurants_list.dart';

class PlacePage extends StatefulWidget {

  int placeIndex;

  PlacePage({Key key, @required this.placeIndex}) : super(key: key);

  @override
  _PlacePageState createState() => _PlacePageState();
}

class _PlacePageState extends State<PlacePage> {

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _scrollToTop() {
    _scrollController.animateTo(_scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 1000), curve: Curves.easeIn);

  }

  Widget build(BuildContext context) {

    final double cardHeight = MediaQuery.of(context).size.height / 1.6;
    final double cardWidth = MediaQuery.of(context).size.width / 1.05;

    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
          onPressed: (){

          }
          ,)
        ],

      ),


      body: Stack(
        children: <Widget>[
          ListView(
            controller: _scrollController,
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
                          image: AssetImage(GetRestaurantsList.image[widget.placeIndex]),
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
                            padding: const EdgeInsets.all(20),
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 10,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width/1.18,
                                    child: AutoSizeText(GetRestaurantsList.placeName[widget.placeIndex], style: TextStyle(fontSize: 20),)),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.18,
                                  child: Row(
                                    children: <Widget>[
                                    Icon(Icons.location_on, size: 18,),
                                      AutoSizeText(GetRestaurantsList.location[widget.placeIndex], style: TextStyle(fontSize: 15),)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.18,
                                  child: AutoSizeText(
                                    GetRestaurantsList.details[widget.placeIndex],
                                      style: TextStyle(fontSize: 15)
                                  ),
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
                      padding: const EdgeInsets.only(top:20.0),
                      child: Visibility(
                        visible: GetRestaurantsList.halal[widget.placeIndex],
                        child: RawMaterialButton(
                          onPressed: () {},
                          child: Text("HALAL", style: TextStyle(color: Colors.white, fontSize: 10.0),),
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
