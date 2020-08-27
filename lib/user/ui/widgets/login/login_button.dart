import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback _onPressed;

  LoginButton({Key key, VoidCallback onPressed})
      : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onPressed,
      child: Container(
        margin: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0, bottom: 20),
        width: 250,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: LinearGradient(
                colors: [
                  Color(0xFFa7ff84), //arriba
                  Color(0xFF1cbb78) //bajo
                ],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );

    // return SizedBox(
    //   width: 200,
    //   height: 50,
    //   child: RaisedButton(

    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    //     onPressed: _onPressed,
    //     child: Text('Login'),
    //   ),
    // );
  }
}
