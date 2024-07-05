import 'dart:async';
import 'package:demo_flutter_application/pages/list-dishes.dart';
import 'package:demo_flutter_application/utils/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      print("User Details: $user");
      if (user == null) {
        print('User is currently signed out!');
        Timer(const Duration(seconds: 3), () {
          Navigator.of(context).pushReplacementNamed("/login");
        });
      } else {
        print('User is signed in!');
        Util.UID = user.uid;
        Timer(const Duration(seconds: 3), () {
          Navigator.of(context).pushReplacementNamed("/dishes");
        });
      }
    });

    Timer(const Duration(seconds: 3), () {
      //Navigator.of(context).push(MaterialPageRoute(
      /*Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const ListDishes(),
      ));*/

      //Navigator.of(context).pushReplacementNamed("/dishes");
      //Navigator.of(context).pushReplacementNamed("/third");

      Navigator.of(context).pushReplacementNamed("/login");
      // Navigator.of(context).pushReplacementNamed("/loginForm");
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
