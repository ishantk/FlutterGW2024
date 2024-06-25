import 'dart:async';
import 'package:demo_flutter_application/pages/list-dishes.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      //Navigator.of(context).push(MaterialPageRoute(
      /*Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const ListDishes(),
      ));*/

      Navigator.of(context).pushReplacementNamed("/dishes");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 96,
            height: 96,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Auribises",
            style: TextStyle(fontSize: 18),
          )
        ],
      )),
    );
  }
}
