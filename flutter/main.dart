import 'package:demo_flutter_application/pages/add-turfs-page.dart';
import 'package:demo_flutter_application/pages/dish-detail.dart';
import 'package:demo_flutter_application/pages/first-screen.dart';
import 'package:demo_flutter_application/pages/fourth-screen.dart';
import 'package:demo_flutter_application/pages/home-page.dart';
import 'package:demo_flutter_application/pages/list-dishes.dart';
import 'package:demo_flutter_application/pages/list-quotes.dart';
import 'package:demo_flutter_application/pages/login-page-form.dart';
import 'package:demo_flutter_application/pages/login-page.dart';
import 'package:demo_flutter_application/pages/quotes.dart';
import 'package:demo_flutter_application/pages/register-page.dart';
import 'package:demo_flutter_application/pages/second-screen.dart';
import 'package:demo_flutter_application/pages/splash.dart';
import 'package:demo_flutter_application/pages/third-screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

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
      debugShowCheckedModeBanner: false,
      // Named Routing
      initialRoute: "/",
      routes: {
        "/": (context) => const Splash(),
        "/home": (context) => const HomePage(),
        "/dishes": (context) => const ListDishes(),
        "/quotes": (context) => const ListQuotes(),
        "/first": (context) => const FirstScreen(),
        "/second": (context) => const SecondScreen(),
        "/third": (context) => const ThirdScreen(),
        "/dishdetail": (context) => const DishDetail(),
        "/login": (context) => const LoginPage(),
        "/loginForm": (context) => const LoginPageForm(),
        "/register": (context) => const RegisterPage(),
        "/add-turf": (context) => const AddTurfsPage(),
      },
    );
  }
}
