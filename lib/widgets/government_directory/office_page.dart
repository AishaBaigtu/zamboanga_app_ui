import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OfficePage extends StatefulWidget {
  OfficePage(
      {Key key,
      this.officeName,
      this.address,
      this.contactNumber,
      this.officeSeal,
      this.route,
      this.officeIndex,
      this.serviceName,
      this.serviceAbout,
      this.officeAbout})
      : super(key: key);

  final List<String> officeName;
  final List<String> address;
  final List<String> contactNumber;
  final List<String> officeSeal;
  final List<String> officeAbout;
  final List<String> route;
  final List<String> serviceName;
  final List<String> serviceAbout;
  final int officeIndex;

  @override
  _OfficePageState createState() => _OfficePageState();
}

class _OfficePageState extends State<OfficePage> {
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
    final double cardHeight = MediaQuery.of(context).size.height / 4;
    final double cardWidth = MediaQuery.of(context).size.width / 1.1;

    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        title: Text("${widget.officeName[widget.officeIndex]}"),
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
                                colors: [Colors.blueAccent, Colors.purple])),
                        child: Center(
                            child: Image(
                                height: 220,
                                image: AssetImage(
                                    widget.officeSeal[widget.officeIndex])))),
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
                                            Text(widget.officeAbout[
                                                widget.officeIndex])
                                          ],
                                        ),
                                      ),
                                    )),
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
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.button,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: widget.serviceName.length,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: ExpansionTile(
                      title: Text(
                        widget.serviceName[index],
                        style: TextStyle(color: Colors.black),
                      ),
                      children: <Widget>[
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.serviceAbout[index]),
                        ),
                      ],
                    ),
                  );
                },
              ),
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
}
