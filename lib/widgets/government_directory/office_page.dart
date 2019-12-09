import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfficePage extends StatefulWidget {

  OfficePage({Key key, @required this.office, @required this.seal, this.aboutOffice, this.officeService, this.officeSeal,}) : super(key: key);

  final String office;
  final String seal;
  final String aboutOffice;
  final String officeService;
  final String officeSeal;


  @override
  _OfficePageState createState() => _OfficePageState();
}

class _OfficePageState extends State<OfficePage> {

  _OfficePageState(
      { @required this.office, this.aboutOffice, this.officeService, this.officeSeal, this.serviceName, this.aboutService});

  String office;
  String aboutOffice;
  String officeService;
  String officeSeal;
  String serviceName;
  String aboutService;


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
    final double screensize = MediaQuery
        .of(context)
        .size
        .height;
    final double cardHeight = MediaQuery
        .of(context)
        .size
        .height / 4;
    final double cardWidth = MediaQuery
        .of(context)
        .size
        .width / 1.1;

    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],

      appBar: AppBar(
        title: Text("${widget.office}"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Stack(
        children: <Widget>[
          ListView(
            controller: _scrollController,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SafeArea(
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.blueAccent, Colors.purple]
                        )
                      ),
                        child: Center(
                            child: Image(height:220,image: AssetImage(widget.seal)))),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 100,
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
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10.0),
                              child: Column(
                                children: <Widget>[
                                  Text("ABOUT"),
                                  Divider(),
                                  Expanded(
                                    child: Container(

                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SingleChildScrollView(
                                            child: Column(

                                              children: <Widget>[
                                                _getAboutOffice(),
                                              ],
                                            ),
                                          ),
                                        )
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
                child: Text(
                  "SERVICES",
                  textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .button,),
              ),
             _getServices(),
            ],
          ),

        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _scrollToTop();
        },
      ),
    );
  }


  Widget _getAboutOffice() {
    if (widget.office == "Office of the City Mayor")
      return Text("The Government of Zamboanga City, also known as the Zamboanga City Government is the local government unit in-charge of the City of Zamboanga. The current executive branch is headed by Mayor Maria Isabelle Climaco-Salazar.");
    else if (widget.office == "Sangguniang Panglungsod")
      return Text("The Sangguniang Panlungsod is mandated under R.A. 7160 to enact ordinances and approve resolutions for the general welfare of the city and its constituents.");
    else
      return Text("");
  }

  Widget _getServices() {
    if (widget.office == "Office of the City Mayor")
      return GetServices(
        serviceName: [
          "Medical Assistance",
          "Burial Assistance",
          "Scholarship",
        ],
        aboutService: [
          "",
          "",
          "",
        ],
      );
    else if (widget.office == "Sangguniang Panglungsod")
      return GetServices(
        serviceName: [
          "",
          "",
          "",
        ],
        aboutService: [
          "",
          "",
          "",
        ],
      );
    else
      return GetServices(
        serviceName: [
          "",
          "",
          "",
        ],
        aboutService: [
          "",
          "",
          "",
        ],
      );
  }

}


class GetServices extends StatelessWidget {

  GetServices({this.serviceName, this.aboutService});

  final List<String> serviceName;
  final List<String> aboutService;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: serviceName.length,
      itemBuilder: (BuildContext context, index) {
        return Card(
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),

          child: ExpansionTile(
            title: Text(
              serviceName[index], style: TextStyle(color: Colors.black),),
            children: <Widget>[
              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(aboutService[index]),
              ),

            ],
          ),
        );
      },
    );
  }
}
