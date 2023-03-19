import 'package:flutter/material.dart';
import 'data/data.dart' as lib;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title: Center(child: Text(lib.title)),
          bottom: TabBar(
              labelColor: lib.labelColor,
              indicatorColor: lib.indicatorColor,
              tabs: [
                Tab(text: lib.menu[0].title, icon: lib.menu[0].icon),
                Tab(text: lib.menu[1].title, icon: lib.menu[1].icon),
                Tab(text: lib.menu[2].title, icon: lib.menu[2].icon),
                Tab(text: lib.menu[3].title, icon: lib.menu[3].icon),
                Tab(text: lib.menu[4].title, icon: lib.menu[4].icon),
              ]),
        ),
        body:
        TabBarView(children: <Widget>[lib.menu[0].widget, lib.menu[1].widget, lib.menu[2].widget, lib.menu[3].widget, lib.menu[4].widget]),
      ),
    ),
  );
}