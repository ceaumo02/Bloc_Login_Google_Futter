import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platzi_viajes/platzi_trips_cupertino.dart';
import 'package:platzi_viajes/user/bloc/authentication_bloc/bloc.dart';
import 'package:platzi_viajes/user/bloc/simple_bloc_delegate.dart';
import 'package:platzi_viajes/user/repository/user_repository.dart';
import 'package:platzi_viajes/user/ui/screens/home_screen.dart';
import 'package:platzi_viajes/user/ui/widgets/login/login_screen.dart';
import 'package:platzi_viajes/user/ui/screens/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();

  final UserRepository userRepository = UserRepository();
  runApp(BlocProvider(
    create: (context) =>
        AuthenticationBloc(userRepository: userRepository)..add(AppStarted()),
    child: App(userRepository: userRepository),
  ));
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: PlatziTripsCupertino(),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is Uninitialized) {
            return SplashScreen();
          }
          if (state is Authenticated) {
            return PlatziTripsCupertino();
            // return HomeScreen(
            //   name: state.displayName,
            // );
          }
          if (state is Unauthenticated) {
            return LoginScreen(
              userRepository: _userRepository,
            );
          }
          return Container(
            color: Colors.yellow,
          );
        },
      ),
    );
  }
}
