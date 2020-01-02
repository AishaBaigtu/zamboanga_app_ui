import 'package:flutter/material.dart';
import 'package:zamboanga_app_ui/widgets/government_directory/office_page.dart';

class GovernmentDirectory extends StatefulWidget {
  @override
  _GovernmentDirectoryState createState() => _GovernmentDirectoryState();
}

class _GovernmentDirectoryState extends State<GovernmentDirectory> {
  final List<String> officeName = ["OFFICE NAME", "OFFICE NAME"];
  final List<String> officeAbout = ["About", "About"];
  final List<String> address = ["Address", "Address"];
  final List<String> contactNumber = ["Contact Number", "Contact Number"];
  final List<String> officeSeal = [
    "images/city_of_zamboanga_seal.png",
    "images/city_of_zamboanga_seal.png"
  ];
  final List<String> route = ["", ""];
  final List<String> serviceName = ["Service 1", "Service 2"];
  final List<String> serviceAbout = ["About", "About"];

  double radius = 10.0;

  double spacing = 10.0;

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
          child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: officeName.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: spacing,
                ),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.purple)),
                  color: Colors.white,
                  textColor: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image(image: AssetImage(officeSeal[index])),
                          title: Text(
                            officeName[index].toUpperCase(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Divider(
                                height: 5.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.call,
                                    size: 12.0,
                                  ),
                                  Text(
                                    contactNumber[index],
                                    style: TextStyle(fontSize: 8.0),
                                  ),
                                ],
                              ),
                              Divider(
                                height: 5.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 12.0,
                                  ),
                                  Text(
                                    address[index],
                                    style: TextStyle(fontSize: 8.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) => OfficePage(
                          officeName: officeName,
                          officeSeal: officeSeal,
                          officeAbout: officeAbout,
                          contactNumber: contactNumber,
                          address: address,
                          serviceName: serviceName,
                          serviceAbout: serviceAbout,
                          officeIndex: index,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
