import 'package:demo_flutter_application/pages/fourth-screen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data: Which needs to be passed to next screen
    String quote = "Work Hard, Get Lucky !";

    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen")),
      body: Center(
          child: ElevatedButton(
        child: const Text("Navigate to Fourth Screen"),
        onPressed: () {
          /*Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const FourthScreen(),
          ));*/

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FourthScreen(
                        quoteReceived: quote,
                      )));
        },
      )),
    );
  }
}
