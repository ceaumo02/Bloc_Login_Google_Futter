import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_viajes/Place/ui/screens/home_trips.dart';
import 'package:platzi_viajes/Place/ui/screens/search_trips.dart';
import 'package:platzi_viajes/User/ui/screens/profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  final String name;

  PlatziTripsCupertino({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(backgroundColor: Colors.transparent, items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo), title: Text("")),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;
          }
        },
      ),
    );
  }
}
