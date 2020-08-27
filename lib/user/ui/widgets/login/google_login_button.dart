import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platzi_viajes/user/bloc/login_bloc/bloc.dart';
import 'package:platzi_viajes/user/bloc/login_bloc/login_bloc.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
      width: 200,
      height: 50,
      child: GoogleSignInButton(
        onPressed: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Loggin in...'),
                CircularProgressIndicator()
              ],
            ),
          ));
          BlocProvider.of<LoginBloc>(context).add(LoginWithGooglePressed());
        },
        borderRadius: 14,
        splashColor: Colors.transparent,
        text: 'Google Sign In',
        textStyle: TextStyle(
            fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
