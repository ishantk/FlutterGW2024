import 'package:demo_flutter_application/model/user.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AppUser user = AppUser.getAppUserEmptyObject();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: formKey,
            child: ListView(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/pizza.png?alt=media&token=29f2d2b0-3282-4535-8c6b-d2f568593917",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter Your Name"),
                  onSaved: (value) {
                    user.name = value!;
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter Your Phone"),
                  onSaved: (value) {
                    user.phone = value!;
                  },
                ),
                TextFormField(
                  decoration:
                      const InputDecoration(labelText: "Enter Your Email"),
                  onSaved: (value) {
                    user.email = value!;
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Select Gender:"),
                    ListTile(
                      title: const Text("Male"),
                      leading: Radio<String>(
                        value: "Male",
                        groupValue: user.gender,
                        onChanged: (value) {
                          setState(() {
                            user.gender = value!;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text("Female"),
                      leading: Radio<String>(
                        value: "Female",
                        groupValue: user.gender,
                        onChanged: (value) {
                          setState(() {
                            user.gender = value!;
                          });
                        },
                      ),
                    )
                  ],
                ),
                DropdownButtonFormField<String>(
                  value: user.sports,
                  items: ["Select Sports", "Cricket", "Badminton", "Soccer"]
                      .map((element) {
                    return DropdownMenuItem<String>(
                        value: element, child: Text(element));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      user.sports = value!;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text("Have you Represented a Club ?"),
                  value: user.representClub,
                  onChanged: (value) {
                    setState(() {
                      user.representClub = value;
                    });
                  },
                )
              ],
            )),
      ),
    );
  }
}
