import 'package:flutter/material.dart';
import 'package:platzi_viajes/User/ui/screens/profile_header.dart';
import 'package:platzi_viajes/User/ui/widgets/profile_places_list.dart';
import 'package:platzi_viajes/User/ui/widgets/profile_background.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*return Container(
      color: Colors.indigo,
    );*/
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[ProfileHeader(), ProfilePlacesList()],
        ),
      ],
    );
  }
}
