import 'package:flutter/material.dart';

class ListQuotes extends StatelessWidget {
  const ListQuotes({super.key});

  getQuotes() {
    List<String> quotes = [
      "It takes courage to grow up and become who you really are.",
      "Your self-worth is determined by you",
      "Nothing is impossible",
      "Keep your face always toward the sunshine, and shadows will fall behind you.",
      "You have brains in your head",
      "Attitude is a little thing that makes a big difference.",
    ];

    /*List<Text> quoteTextList = [];

    for (int idx = 0; idx < quotes.length; idx++) {
      quoteTextList.add(Text(quotes[idx]));
    }*/

    //List<Text> quoteTextList = quotes.map((element) => Text(element)).toList();

    /*List<ListTile> quoteTextList = [];

    for (int idx = 0; idx < quotes.length; idx++) {
      quoteTextList.add(ListTile(
          leading: const Icon(Icons.format_quote), title: Text(quotes[idx])));
    }*/

    List<ListTile> quoteTextList = quotes
        .map((element) => ListTile(
            leading: const Icon(Icons.arrow_circle_right, color: Colors.amber),
            title: Text(element)))
        .toList();

    return quoteTextList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List of Quotes")),
      body: ListView(children: getQuotes()),
    );
  }
}


// HW: Implement sorting function in the above with a stateful widget