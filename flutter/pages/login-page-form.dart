import 'package:flutter/material.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({super.key});

  @override
  _LoginPageFormState createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  styleTextField(String hintText) {
    return InputDecoration(
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 2)),
    );
  }

  login() {
    if (formKey.currentState?.validate() ?? false) {
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      print("Details: Email: $email | Password: $password");
    } else {
      print("Errors...");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formKey,
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
              TextFormField(
                controller: emailController,
                //decoration: const InputDecoration(labelText: "Email"),
                decoration: styleTextField("Email"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Eneter Email";
                  }

                  // Explore RegEx in dart to validate email
                  if (!value.toString().contains("@") ||
                      !value.toString().contains(".")) {
                    return "Email Not Properly Formed $value";
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                controller: passwordController,
                //decoration: const InputDecoration(labelText: "Password"),
                decoration: styleTextField("Password"),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password Cannot be Empty";
                  }

                  if (value.length < 6) {
                    return "Password shoud be 6 characters minimum";
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 12,
              ),
              ElevatedButton(onPressed: login, child: const Text("Login")),
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
      ),
    );
  }
}
