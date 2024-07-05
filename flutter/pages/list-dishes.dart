import 'package:demo_flutter_application/model/dish.dart';
import 'package:demo_flutter_application/model/task.dart';
import 'package:demo_flutter_application/services/task-service.dart';
import 'package:demo_flutter_application/utils/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ListDishes extends StatelessWidget {
  const ListDishes({super.key});

  addTask() async {
    TaskService service = TaskService(userId: Util.UID);

    Task task = Task(
        title: "Fetch Data in Flutter Firebase",
        description: "Create a New UI to fetch and display data",
        startDate: DateTime.now(),
        endDate: DateTime.now(),
        isCompleted: false,
        createdOn: DateTime.now());

    service.addTask(task);
  }

  fetchTasks() async {
    print("fetchTasks executed... UID is: ${Util.UID}");
    TaskService service = TaskService(userId: Util.UID);
    service.getTasks();
  }

  getDishes(BuildContext context) {
    List<Dish> dishes = [
      Dish(
          imageURL:
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/dal.png?alt=media&token=fc5f752c-8eb1-4ca0-a177-6004330a0784",
          name: "Dal Makhani",
          price: 300,
          rating: 4.5,
          color: Colors.amber[100]!.withOpacity(0.5)),
      Dish(
          imageURL:
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/paneer.png?alt=media&token=bd760866-2085-4dd0-b115-30396635ccd8",
          name: "Paneer Makhani",
          price: 300,
          rating: 4.2,
          color: Colors.blueAccent[100]!.withOpacity(0.5)),
      Dish(
          imageURL:
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/noodles.png?alt=media&token=ad8c1a4d-885b-43f7-83d7-5a1378cefc1b",
          name: "Noodles",
          price: 400,
          rating: 3.8,
          color: Colors.deepPurple[100]!.withOpacity(0.5)),
      Dish(
          imageURL:
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/burger.png?alt=media&token=75bf8821-a00e-4651-9da3-719384e59fcc",
          name: "Burger",
          price: 120,
          rating: 4.0,
          color: Colors.orange[100]!.withOpacity(0.5)),
      Dish(
          imageURL:
              "https://firebasestorage.googleapis.com/v0/b/healthlogger-app.appspot.com/o/pizza.png?alt=media&token=29f2d2b0-3282-4535-8c6b-d2f568593917",
          name: "Pizza",
          price: 600,
          rating: 3.5,
          color: Colors.indigoAccent[100]!.withOpacity(0.5)),
    ];

    // List<ListTile> dishListElements = dishes
    //     .map((element) => ListTile(
    //         leading: const Icon(Icons.arrow_circle_right, color: Colors.amber),
    //         title: Text(element.name)))
    //     .toList();

    List<GestureDetector> dishListElements = dishes
        .map((element) => GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed("/dishdetail", arguments: element);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                color: element.color,
                child: Row(
                  children: [
                    Image.network(
                      element.imageURL,
                      width: 64,
                      height: 64,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(element.name),
                        Text("\u20b9 ${element.price}"),
                        Text(element.rating.toString()),
                      ],
                    ),
                    const Divider(
                      height: 20,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ))
        .toList();

    return dishListElements;
  }

  logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed("/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu"), actions: [
        IconButton(
            onPressed: () {
              logout(context);
            },
            icon: const Icon(Icons.logout))
      ]),
      body: ListView(children: getDishes(context)),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchTasks,
        child: const Icon(Icons.add),
      ),
    );
  }
}
