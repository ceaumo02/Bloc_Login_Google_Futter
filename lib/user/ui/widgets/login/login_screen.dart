import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platzi_viajes/user/bloc/login_bloc/bloc.dart';
import 'package:platzi_viajes/user/repository/user_repository.dart';
import 'package:platzi_viajes/widgets/gradient_back.dart';

import '../login/login_form.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository _userRepository;

  LoginScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack("", null),
          BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(userRepository: _userRepository),
          child: LoginForm(userRepository: _userRepository),
        ),
        ],     
      ),
    );
  }
}
