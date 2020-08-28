import 'package:flutter/material.dart';
import 'circle_button.dart';

class ButtonsBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 0.0,
            vertical: 10.0
        ),
        child: Row(
          children: <Widget>[
            // Write a post
            CircleButton(true, Icons.turned_in_not, 20.0, Color.fromRGBO(255, 255, 255, 1),
              () => {}),
            // Change password
            CircleButton(true, Icons.vpn_key, 20.0, Color.fromRGBO(255, 255, 255, 0.6),
              () => {}),
            // Add new Place
            CircleButton(false, Icons.add, 40.0, Color.fromRGBO(255, 255, 255, 1),
              () => {}),
            // Send a new email
            CircleButton(true, Icons.mail_outline, 20.0, Color.fromRGBO(255, 255, 255, 0.6),
              () => {}),
            // Loggout app
            CircleButton(true, Icons.exit_to_app, 20.0, Color.fromRGBO(255, 255, 255, 0.6),
              () => {})
          ],
        )
    );
  }

}