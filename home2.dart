import 'package:flutter/material.dart';
import 'groupeMaking.dart';

class Home extends StatefulWidget{
  @override
  _HomeBar createState() => new _HomeBar();
}

enum NavItems{
  Einstellungen,
  Logout
}

class _HomeBar extends State<Home>{

  final list = ListTile.divideTiles(tiles: null);
  void _navItems (NavItems selected){
    switch(selected){
      case NavItems.Einstellungen:
            break;
      case NavItems.Logout:
        break;


    }
  }

  Widget build(BuildContext context) {
    
    return new MaterialApp(
      home: new DefaultTabController(
          length: 4,
          child: new Scaffold(
            appBar: new AppBar(

              backgroundColor: Colors.red[800],
              bottom: new TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.contacts)),
                  new Tab(icon: new Icon(Icons.location_on)),
                ],
              ),
              actions: <Widget>[
               // new Image.asset("assets/images/G7-Weltkugel.png", fit: BoxFit.scaleDown,scale:  100.0,color: Colors.black, )

               new PopupMenuButton<NavItems>(
                 onSelected: _navItems,
                 itemBuilder: (BuildContext context){
                   return [
                     new PopupMenuItem(
                       value: NavItems.Einstellungen,
                       child: new Text('Einstellungen'),
                     ),
                     new PopupMenuItem(
                       value: NavItems.Logout,
                       child: new Text('Logout'),
                     ),
                   ];
                 },
               ),
              ],
              title: new Text('Home'),
            ),
            body: new Center(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new TabBarView(
                    children: [
                      new Column(
                          children: <Widget>[
                           new Row(
                             children: <Widget>[
                               new CircleAvatar(
                                 child: const Text('BO'),
                                 backgroundColor: Colors.red,
                                 foregroundColor: Colors.white,
                               ),
                               new SizedBox(
                                 height: 70.0,
                                 width: 300.0,
                                 child: new Card(
                                   color: Colors.red[800],
                                   margin: const EdgeInsets.all(10.0),
                                   child: new Center(
                                     child: new ListTile(
                                       title: const Text('BO Informatiker', style: const TextStyle(color: Colors.white)),
                                       subtitle: const Text('Mitglieder: 52',style: const TextStyle(color: Colors.white)),
                                       //wenn man drauf klickt dann:
                                       // onTap: ,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           new Row(
                             children: <Widget>[
                               new CircleAvatar(
                                 child: const Text('G7'),
                                 backgroundColor: Colors.red,
                                 foregroundColor: Colors.white,
                               ),
                               new SizedBox(
                                 height: 70.0,
                                 width: 300.0,
                                 child: new Card(
                                   color: Colors.red[800],
                                   margin: const EdgeInsets.all(10.0),
                                   child: new Center(
                                     child: new ListTile(
                                       title: const Text('Group7', style: const TextStyle(color: Colors.white)),
                                       subtitle: const Text('Mitglieder: 3',style: const TextStyle(color: Colors.white)),
                                       //wenn man drauf klickt dann:
                                       // onTap: ,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           new Row(
                             children: <Widget>[
                               new CircleAvatar(
                                 child: const Text('FA'),
                                 backgroundColor: Colors.red,
                                 foregroundColor: Colors.white,
                               ),
                               new SizedBox(
                                 height: 70.0,
                                 width: 300.0,
                                 child: new Card(
                                   color: Colors.red[800],
                                   margin: const EdgeInsets.all(10.0),
                                   child: new Center(
                                     child: new ListTile(
                                       title: const Text('Familie', style: const TextStyle(color: Colors.white)),
                                       subtitle: const Text('Mitglieder: 4',style: const TextStyle(color: Colors.white)),
                                       //wenn man drauf klickt dann:
                                       // onTap: ,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                           new Row(
                             children: <Widget>[
                               new CircleAvatar(
                                 child: const Icon(Icons.add, color: Colors.red,),
                                 backgroundColor: Colors.transparent,
                                 radius: 30.0,
                               ),
                               new SizedBox(
                                 height: 64.0,
                                 width: 256.0,
                                 child: new Card(
                                   color: Colors.white,
                                   margin: const EdgeInsets.all(10.0),
                                   child: new Center(
                                     child: new ListTile(
                                         title:const Text('Neue Gruppe erstellen',
                                           style: const TextStyle(color: Colors.red),
                                         ),
                                       onTap: (){
                                           Navigator.push(context, new MaterialPageRoute(builder: (context) => new GroupMaking()));
                                       },
                                       // onTap: ,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                          ]
                      ),
                    ]
                ),
              ),
            ),
    ),
    ),
    );
  }
}
