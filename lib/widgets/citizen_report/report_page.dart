import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';



class ReportPage extends StatefulWidget {


  final String appBarTitle;

  ReportPage({Key key, @required this.appBarTitle}) : super(key: key);

  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {

  List<File> image=[];
  List<String> type=[];
  List<DateTime> date=[];
  List<String> details=[];
  List<String> time=[];
  List<String> location=[];
  int reportIndex;

  File reportImage;

  double spacing=20;

  _openCamera() async{
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);

    this.setState((){
      reportImage=picture;
    });
  }

  _openGallery() async{
     var picture = await ImagePicker.pickImage(source: ImageSource.gallery);

    this.setState((){
      reportImage=picture;
    });
  }

  Widget _imageView(){
    if(reportImage==null){
      return Text("NO IMAGE");
    } else{
      return Image.file(reportImage);
    }
  }

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  _addItems() {
    for (var i = 0; i < (1.0/0.0); i++) {
      setState(() {
        image.add(reportImage);
        type.add(widget.appBarTitle);
        date.add(DateTime.now());
        location.add(myController1.text);
        details.add(myController2.text);
        reportIndex=i;
      });


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }



      }

  }


  @override
  Widget build(BuildContext context) {

    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    double spacing =12.0;
    double division=13;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("${widget.appBarTitle}"),

          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: (height/division)*5,
                      width: width,
                      child: RaisedButton(
                        disabledColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(color: Colors.purple),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: _imageView(),
                        ),
                      ),
                    ),
                    Container(
                        height: (height/division)*.5,
                        width: width,
                        margin: EdgeInsets.only(top: spacing),
                        alignment: Alignment.center,
                        child: Text("TAKE A PHOTO")),
                    Container(
                      height: (height/division)*1,
                      width: width,
                      margin: EdgeInsets.only(top: spacing),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            child: Icon(Icons.photo_camera, color: Colors.white,),
                            color: Colors.purple,

                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0))
                            ),
                            onPressed: (){_openCamera();},
                          ),
                          VerticalDivider(
                            width: 1,
                            indent: (height/division)*1,
                          ),
                          RaisedButton(
                            child: Icon(Icons.image, color: Colors.white,),
                            color: Colors.purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0))
                            ),
                            onPressed: (){_openGallery();},
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: (height/division)*1,
                      width: width,
                      margin: EdgeInsets.only(top: spacing),
                      child: TextFormField(
                        controller: myController1,
                        decoration: InputDecoration(
                          labelText: "Enter Location",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                    Container(
                      height: (height/division)*1,
                      width: width,
                      margin: EdgeInsets.only(top: spacing),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        controller: myController2,
                        decoration: InputDecoration(
                          labelText: "Enter Details",
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                      ),
                    ),
                    Container(
                      height: (height/division)*1,
                      width: width,
                      margin: EdgeInsets.only(top: spacing),
                      child: RaisedButton(
                        child: Text("Send Report", style: TextStyle(color: Colors.white),),
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)
                        ),
                        onPressed: (){
                        },
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),

    );
  }
}
