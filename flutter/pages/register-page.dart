import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  register() async {
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      /*
      // Execute Firebase Auth Code
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      print("User Created with : Email: $email | Password: $password");
      print("Credential: $credential");
      */

      try {
        UserCredential credential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        print("User Created with : Email: $email | Password: $password");
        print("Credential: $credential");
        print("UID: ${credential.user!.uid}");

        Map<String, dynamic> user = {
          "name": name,
          "email": email,
          "uid": credential.user!.uid
        };

        FirebaseFirestore.instance.collection("users").add(user).then(
            (DocumentReference doc) =>
                print('DocumentSnapshot added with ID: ${doc.id}'));

        Navigator.of(context).pushReplacementNamed("/dishes");
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    } else {
      print("Missing Details: Email: $email | Password: $password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register Page")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Welcome",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(onPressed: register, child: const Text("Register")),
            const SizedBox(
              height: 12,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/login");
                },
                child: const Text("Exiting User? Lgin Here"))
          ],
        ),
      ),
    );
  }
}
