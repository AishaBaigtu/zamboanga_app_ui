import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Home extends StatefulWidget {
  Home({this.appBarTitle, this.feedTitle, this.showDrawer, this.menuCardType, this.feedCardType, this.bannerImage});

  final String appBarTitle;
  final String feedTitle;
  final Widget showDrawer;
  final Widget menuCardType;
  final Widget feedCardType;
  final String bannerImage;


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState({this.appBarTitle, this.feedTitle, this.menuCardType, this.showDrawer, this.feedCardType, this.bannerImage});

  String appBarTitle;
  String feedTitle;
  bool showDrawer;
  Widget menuCardType;
  Widget feedCardType;
  String bannerImage;


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
    return Scaffold(
      drawerEdgeDragWidth: 0,
      backgroundColor: Colors.indigo[50],

      appBar: AppBar(
        leading: widget.showDrawer,
        title: Text(widget.appBarTitle),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 0,

      ),

      drawer: Visibility(
          visible: true,
          child: Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.blue, Colors.purpleAccent]
                    ),
                  ),
                  accountName: Text(''),
                  accountEmail: Text(''),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(''),
                  ),
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    removeTop: true,
                    context: context,
                    child: ListView(
                      children: <Widget>[

                        ListTile(
                            leading: Icon(Icons.folder),
                            title: Text("Terms and Conditions"),
                            onTap: () {

                            }
                        ),
                        ListTile(
                            leading: Icon(Icons.info_outline),
                            title: Text("About"),
                            onTap: () {

                            }
                        ),
                        ListTile(
                            leading: Icon(Icons.exit_to_app),
                            title: Text("Logout"),
                            onTap: () {

                            }
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          )
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
                          image: AssetImage(widget.bannerImage),
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 3,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          alignment: Alignment.topLeft,
                        ),
                      ),
                    ),
                  ),

                  widget.menuCardType,

                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 20.0),
                child: Text(
                  widget.feedTitle.toUpperCase(), textAlign: TextAlign.center, style: Theme
                    .of(context)
                    .textTheme
                    .button,),
              ),

              widget.feedCardType,
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
