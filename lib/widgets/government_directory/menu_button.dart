import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/citizen_report/report_page.dart';
import 'package:zamboanga_app_ui/widgets/government_directory/office_page.dart';


// ignore: must_be_immutable
class ButtonMenu extends StatelessWidget {

  ButtonMenu(
      {this.officeName, this.address, this.contactNumber, this.officeSeal, this.route,});

  final String officeName;
  final String address;
  final String contactNumber;
  final String officeSeal;
  final String route;





  double spacing = 10.0;
  double radius = 10.0;
  static final buttoncolor = Colors.white;



  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(bottom: spacing,),
      child: RaisedButton(
        shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.purple)
        ),
        color: Colors.white,
        textColor: Colors.purple,


        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image(image: AssetImage(officeSeal)),
                title: Text(officeName.toUpperCase(), style: TextStyle( fontSize: 20.0),),
                subtitle: Column(
                  children: <Widget>[
                    Divider(height: 5.0,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.call, size: 12.0,),
                        Text(contactNumber, style: TextStyle(fontSize: 8.0),),
                      ],
                    ),
                    Divider(height: 5.0,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on, size: 12.0,),
                        Text(address, style: TextStyle(fontSize: 8.0),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) =>
                OfficePage(office: officeName, seal: officeSeal),
          ),);
        },

      ),
    );
  }

}