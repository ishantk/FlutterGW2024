import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<String> quotes = [
    "It takes courage to grow up and become who you really are.",
    "Your self-worth is determined by you",
    "Nothing is impossible",
    "Keep your face always toward the sunshine, and shadows will fall behind you.",
    "You have brains in your head",
    "Attitude is a little thing that makes a big difference."
  ];

  /*
    idx: 0
    idx = 0 + 1 % 6 | idx = 1
    idx = 1 + 1 % 6 | idx = 2
    
    idx = 5 + 1 % 6 | idx = 0
  */

  int idx = 0;

  void nextQuote() {
    setState(() {
      idx = (idx + 1) % quotes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          quotes[idx],
          style: const TextStyle(fontSize: 12),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nextQuote();
        },
        child: const Icon(Icons.skip_next),
      ),
    );
  }
}
