import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bgt.jpg'), fit: BoxFit.cover)),
          child: Shimmer.fromColors(
            period: Duration(milliseconds: 1500),
            baseColor: Color(0xff7f00ff),
            highlightColor: Color(0xffe100ff),
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Platzi Viajes",
                style: TextStyle(
                    fontSize: 50.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.w900,
                    shadows: <Shadow>[
                      Shadow(
                          blurRadius: 18.0,
                          color: Colors.black87,
                          offset: Offset.fromDirection(120, 12))
                    ]),
              ),
            ),
          )),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Splash Screen'),)
//     );
//   }
// }
