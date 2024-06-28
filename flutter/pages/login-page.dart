import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Kind of Constructor
  @override
  void initState() {
    super.initState();
  }

  // Kind of Destructor
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  login() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      print("Details: Email: $email | Password: $password");
    } else {
      print("Missing Details: Email: $email | Password: $password");
    }
  }

  styleTextField(String hintText) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 2)),
      // enabledBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(12),
      //     borderSide: const BorderSide(color: Colors.amber, width: 2)),
      // focusedBorder: OutlineInputBorder(
      //     borderRadius: BorderRadius.circular(12),
      //     borderSide: const BorderSide(color: Colors.purple, width: 2)),
      //fillColor: Colors.blueAccent[100],
      //filled: true
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Image.network(
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/dal.png?alt=media&token=fc5f752c-8eb1-4ca0-a177-6004330a0784",
              width: 64,
              height: 64,
            ),
            const Text(
              "Welcome",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: emailController,
              //decoration: const InputDecoration(labelText: "Email"),
              decoration: styleTextField("Email"),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: passwordController,
              //decoration: const InputDecoration(labelText: "Password"),
              decoration: styleTextField("Password"),
              obscureText: true,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                onPressed: () {
                  login();
                },
                child: const Text("Login")),
            const SizedBox(
              height: 12,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/register");
                },
                child: const Text("New User? Register Here"))
          ],
        ),
      ),
    );
  }
}
