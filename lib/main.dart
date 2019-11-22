import 'package:flutter/cupertino.dart';
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
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text('Site Survey',style: new TextStyle(color:Colors.black,fontSize: 24)),

                new Container(
                  padding:EdgeInsets.only(left: 32.0),
                  child: new Row(
                    children: <Widget>[
                      new GestureDetector(
                        child: new Container(
                          width: 80,
                          height: 40,
                          color: Colors.black12,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Task",style: new TextStyle(color: Colors.black,fontSize: 22))
                            ],
                          ),
                        ),
                        onTap: () => debugPrint('Report Clicked'),
                      ),

                      new GestureDetector(
                        child: new Container(
                          padding:EdgeInsets.only(left: 32.0),
                          child: new Row(
                            children: <Widget>[
                              Text("Report",style: new TextStyle(color:Colors.black,fontSize: 22))
                            ],
                          ),
                        ),
                        onTap: () => debugPrint('Report Clicked'),
                      ),

                      new GestureDetector(
                        child: new Container(
                          padding:EdgeInsets.only(left: 32.0),
                          child: new Row(
                            children: <Widget>[
                              Text("Help",style: new TextStyle(color:Colors.black,fontSize: 22))
                            ],
                          ),
                        ),
                        onTap: () => debugPrint('Help Clicked'),
                      ),


                    ],
                  ),
                ),
                
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new IconButton(
                    icon: new Image.asset('images/profile_image.jpeg'),
                    onPressed: () => debugPrint('Pressed!')),
                new Text(
                    'Peter',
                    style: new TextStyle(color: Colors.black, fontSize: 14.0)
                ),
              ],
            ),

          ],
        ),
      ),

      drawer: new Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new Text(
              '',
              style: new TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.normal
              ),),
            ListTile(
              title: Text(
                'All Tasks (7)', style: new TextStyle(fontSize: 22.0),),
              onTap: () => Navigator.pop(context),
            ),

            ExpansionTile(
                title: Text("My Tasks (7)", style: new TextStyle(fontSize: 20.0),),
            children: <Widget>[
              new GestureDetector(
                child: new Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.black26,
                  padding: EdgeInsets.only(left: 32.0),
                  child: new Row(
                    children: <Widget>[
                      Text("Todo (4)", style: new TextStyle(fontSize: 20.0),)
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
                      Text("Submitted (1)", style: new TextStyle(fontSize: 20.0),)
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
                      Text("Done (1)", style: new TextStyle(fontSize: 20.0),)
                    ],
                  ),
                ),
                onTap: () => Navigator.pop(context),
              ),


            ],),

          ],
        ),
      ),


//     body: new Container(
//       decoration: BoxDecoration(
//           border: Border.all(
//               color: Colors.black,
//               width: 1.0
//           )
//       ),
//       width: double.infinity,
//       height: 40,
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
////               new Padding(padding: EdgeInsets.only(top: 90)),
//               new IconButton(icon: new Icon(Icons.navigation,),
//                   onPressed: () => debugPrint('Clicked!')),
//               new Text('Site Survey',style: new TextStyle(fontSize: 18)),
//
//               new Container(
//                 padding:EdgeInsets.only(left: 32.0) ,
//                   child: new Row(
//                     children: <Widget>[
//                       new GestureDetector(
//                         child: new Container(
//                           color: Colors.black26,
//                           child: new Row(
//                             children: <Widget>[
//                               Text("Todo",style: new TextStyle(fontSize: 24))
//                             ],
//                           ),
//                         ),
//
//                         onTap: () => debugPrint('Clicked'),
//                       ),
//
//                       new GestureDetector(
//                         child: new Container(
//                           padding:EdgeInsets.only(left: 32.0),
//                           child: new Row(
//                             children: <Widget>[
//                               Text("Task",style: new TextStyle(fontSize: 24))
//                             ],
//                           ),
//                         ),
//
//                         onTap: () => debugPrint('Clicked'),
//                       ),
//
//                       new GestureDetector(
//                         child: new Container(
//                           padding:EdgeInsets.only(left: 32.0),
//                           child: new Row(
//                             children: <Widget>[
//                               Text("Report",style: new TextStyle(fontSize: 24))
//                             ],
//                           ),
//                         ),
//
//                         onTap: () => debugPrint('Clicked'),
//                       ),
//                     ],
//                   ),
//               ),
//
//
//             ],
//           ),
//           Row(
//             children: <Widget>[
//               new IconButton(icon: new Image.asset('images/profile_image.jpeg'),
//                   onPressed:  () => debugPrint('Pressed!')),
//               new Text(
//                 'Peter',
//                   style: new TextStyle(color: Colors.black, fontSize: 14.0)
//               )
//             ],
//           ),
//
//         ],
//
//       ),
//
//
//     ),

    );

//    return new DefaultTabController(
//        length: 3,
//        child: new Scaffold(
//          appBar: new AppBar(
//            iconTheme: new IconThemeData(color: Colors.black),
//            bottom: TabBar(
//                unselectedLabelColor: Colors.black,
//                labelColor:Colors.black ,
//                tabs: [
//                  Tab(text: "Task"),
//                  Tab(text: "Report"),
//                  Tab(text: "Help"),
//                ]),
//            title: new Text(
//              'TaskList App',
//              style: new TextStyle(color: Colors.black),
//            ),
//            backgroundColor: Colors.white,
//            centerTitle: true,
//            actions: <Widget>[
//              new Row(
//                children: <Widget>[
//                  new IconButton(
//                      icon: new Image.asset('images/profile_image.jpeg'),
//                      onPressed: () => debugPrint('Pressed!')),
//                  new Text(
//                    'Peter',
//                    style: new TextStyle(color: Colors.black, fontSize: 14.0),
//                  ),
//                ],
//              )
//
//            ],
//          ),
//          drawer: new Drawer(
//            child: new ListView(
//              padding: EdgeInsets.zero,
//              children: <Widget>[
//                new Text(
//                  'Site Survey',
//                  style: new TextStyle(
//                    fontSize: 18.0,
//                      fontStyle: FontStyle.normal
//                  ),),
//                ListTile(
//                  title: Text('All Tasks (7)'),
//                  onTap: () => Navigator.pop(context),
//                ),
//
//                ExpansionTile(
//                    title: Text("My Tasks (7)"),
//                  children: <Widget>[
//                    new GestureDetector(
//                      child: new Container(
//                        height: 40,
//                        width: double.infinity,
//                        color: Colors.black26,
//                        padding: EdgeInsets.only(left: 32.0),
//                        child: new Row(
//                          children: <Widget>[
//                            Text("Todo (4)")
//                          ],
//                        ),
//                      ),
//                      onTap: () => Navigator.pop(context),
//                    ),
//
//                    new InkWell(
//                      child: new Container(
//                        height: 40,
//                        width: double.infinity,
//                        padding: EdgeInsets.only(left: 32.0),
//                        child: new Row(
//                          children: <Widget>[
//                            Text("Submitted (1)")
//                          ],
//                        ),
//                      ),
//                      onTap: () => Navigator.pop(context),
//                    ),
//
//                    new InkWell(
//                      child: new Container(
//                        height: 40,
//                        width: double.infinity,
//                        padding: EdgeInsets.only(left: 32.0),
//                        child: new Row(
//                          children: <Widget>[
//                            Text("Done (1)")
//                          ],
//                        ),
//                      ),
//                      onTap: () => Navigator.pop(context),
//                    ),
//
//                  ],
//                )
//              ],
//            ),
//          ),
//          body: TabBarView(
//              children: [
//                Text("Task Screen"),
//                Text("Report Screen"),
//                Text("Help Screen"),
//              ]),
//        ));
  }
}
