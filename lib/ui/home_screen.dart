import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}

  class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("flutter"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: "Home" ,
              ),
              Tab(
                icon: Icon(Icons.notifications),
                text: "Notify",
              ),
              Tab(
                icon: Icon(Icons.map),
                text: "Map",
              ),
              Tab(
                icon: Icon(Icons.account_box),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Setup",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            new Center(
              child: Text(
                "home",
                textAlign: TextAlign.center,
                ),
            ),
            new Center(
              child: Text(
                "Notify",
                textAlign: TextAlign.center,
                ),
            ),
            new Center(
              child: Text(
                "Map",
                textAlign: TextAlign.center,
                ),
            ),
            new Center(
              child: Text(
                "Profile",
                textAlign: TextAlign.center,
                ),
            ),
            new Center(
              child: Text(
                "Setup",
                textAlign: TextAlign.center,
                ),
            )
          ],
        ),
      ),
    );
  }

  }