import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/places/place_page.dart';


class RestaurantsList extends StatelessWidget {

  List<String> placeName=["Bay Tal Mal Bay Tal Mal","ggg"];
  List<String> location=["Canelar, Zamboanga City",""];
  List<String> details=["dkkkkkkkkkkkkkkkkkkkkkkkkkkkkllllllllllllllllllllllllllllllllllllllllllllllsssssssssssssssssaaaaaa",""];
  List<bool> halal=[false,true];
  List<String> image=["images/homepage_banner.png","images/peso_job_banner.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurants"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount:placeName.length,
          itemBuilder: (BuildContext context, index){
            return Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              heightFactor: 0.8,
                              widthFactor: 1,
                              child: Image(image: AssetImage(image[index]),
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height/3.5,
                                  fit:BoxFit.fill),
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                            child: Text(placeName[index], style: Theme.of(context).textTheme.title, ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, size: 18.0,),
                                Expanded(child: Text(location[index])),
                                IconButton(
                                  icon: Icon(Icons.arrow_forward_ios, size: 18,),
                                  onPressed: (){
                                    Navigator.of(context).push( MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PlacePage(placeIndex:index),
                                    ),);
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Visibility(
                          visible: halal[index],
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
              ),
            );
          }
          ),
    );
  }
}

final GetRestaurantsList=RestaurantsList();