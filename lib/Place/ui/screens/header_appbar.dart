import 'package:flutter/material.dart';
import 'package:platzi_viajes/widgets/gradient_back.dart';
import 'package:platzi_viajes/Place/ui/widgets/card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[GradientBack("Welcome", 250), CardImageList()],
      ),
    );
  }
}
