import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/government_directory/menu_button.dart';



class GovernmentDirectory extends StatefulWidget {
  @override
  _GovernmentDirectoryState createState() => _GovernmentDirectoryState();
}

class _GovernmentDirectoryState extends State<GovernmentDirectory> {

  double radius = 10.0;
  double spacing = 10.0;
  static final buttoncolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("Government Directory"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),

      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              ButtonMenu(
                officeName: "Office of the City Mayor",
                address: "Address",
                contactNumber:"Contact Number",
                officeSeal:"images/city_of_zamboanga_seal.png",
                route: "/office_page",
              ),

              ButtonMenu(
                officeName: "Sangguniang Panglungsod",
                address: "Address",
                contactNumber:"Contact Number",
                officeSeal:"images/city_of_zamboanga_seal.png",
                route: "/office_page",
              ),

              ButtonMenu(
                officeName: "Office of the City Accountant",
                address: "Address",
                contactNumber:"Contact Number",
                officeSeal:"images/city_of_zamboanga_seal.png",
                route: "/office_page",
              ),


            ],

          ),
        ),
      ),
    );

  }
}

