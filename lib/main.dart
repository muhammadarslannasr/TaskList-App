import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'TaskList App',
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool tag = false;

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            iconTheme: new IconThemeData(color: Colors.black),
            bottom: TabBar(
              unselectedLabelColor: Colors.black,
                labelColor:Colors.black ,
                tabs: [
//                  Tab(icon: Icon(Icons.directions_car)),
//                  Tab(icon: Icon(Icons.directions_transit)),
//                  Tab(icon: Icon(Icons.directions_bike)),

                  Tab(text: "Task"),
                  Tab(text: "Report"),
                  Tab(text: "Help"),
                ]),
            title: new Text(
              'TaskList App',
              style: new TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            actions: <Widget>[
              new Row(
                children: <Widget>[
                  new IconButton(
                      icon: new Image.asset('images/profile_image.jpeg'),
                      onPressed: () => debugPrint('Pressed!')),
                  new Text(
                    'Peter',
                    style: new TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ],
              )

            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                new Text(
                  'Site Survey',
                  style: new TextStyle(
                    fontSize: 18.0,
                      fontStyle: FontStyle.normal
                  ),),
                ListTile(
                  title: Text('All Tasks (7)'),
                  onTap: () => Navigator.pop(context),
                ),

                ExpansionTile(
                    title: Text("My Tasks (7)"),
                  children: <Widget>[
                    new GestureDetector(
                      child: new Container(
                        height: 40,
                        width: double.infinity,
                        color: Colors.black26,
                        padding: EdgeInsets.only(left: 32.0),
                        child: new Row(
                          children: <Widget>[
                            Text("Todo (4)")
                          ],
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),

                    new InkWell(
                      child: new Container(
                        height: 40,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 32.0),
                        child: new Row(
                          children: <Widget>[
                            Text("Submitted (1)")
                          ],
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),

                    new InkWell(
                      child: new Container(
                        height: 40,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 32.0),
                        child: new Row(
                          children: <Widget>[
                            Text("Done (1)")
                          ],
                        ),
                      ),
                      onTap: () => Navigator.pop(context),
                    ),

                  ],
                )
              ],
            ),
          ),
          body: TabBarView(
              children: [
                Text("Task Screen"),
                Text("Report Screen"),
                Text("Help Screen"),
              ]),
        ));
  }
}
