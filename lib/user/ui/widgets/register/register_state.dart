import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platzi_viajes/user/bloc/register_bloc/bloc.dart';
import 'package:platzi_viajes/user/repository/user_repository.dart';
import 'package:platzi_viajes/user/ui/widgets/register/register_form.dart';
import 'package:platzi_viajes/widgets/gradient_back.dart';

class RegisterScreen extends StatelessWidget {
  final UserRepository _userRepository;

  RegisterScreen({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          GradientBack('', null),
          BlocProvider<RegisterBloc>(
            create: (context) => RegisterBloc(userRepository: _userRepository),
            child: RegisterForm(),
          ),
        ],
      ),
    );
  }
}
