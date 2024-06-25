import 'package:demo_flutter_application/pages/home.dart';
import 'package:demo_flutter_application/pages/list-dishes.dart';
import 'package:demo_flutter_application/pages/list-quotes.dart';
import 'package:demo_flutter_application/pages/quotes.dart';
import 'package:demo_flutter_application/pages/splash.dart';
import 'package:flutter/material.dart';

main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return const MaterialApp(home: Home());
    //return const MaterialApp(home: Quotes());
    //return const MaterialApp(home: ListQuotes());
    //return const MaterialApp(home: ListDishes());

    return MaterialApp(
      title: "My App",

      // Named Routing
      initialRoute: "/",
      routes: {
        "/": (context) => const Splash(),
        "/dishes": (context) => const ListDishes(),
        "/quotes": (context) => const ListQuotes()
      },
    );
  }
}
