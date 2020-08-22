import 'package:flutter/material.dart';
import 'package:platzi_viajes/user/repository/user_repository.dart';
import 'package:platzi_viajes/user/ui/widgets/register/register_state.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Create an Account'),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          // Return RegisterScreen
          return RegisterScreen(userRepository: _userRepository);
        }));
      },
    );
  }
}
