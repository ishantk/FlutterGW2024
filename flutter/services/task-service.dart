import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo_flutter_application/model/task.dart';

class TaskService {
  String userId;

  CollectionReference? taskCollection;

  TaskService({required this.userId}) {
    taskCollection = FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .collection("tasks");
  }

  // Create a Task in DataBase
  addTask(Task task) {
    taskCollection!.add(task.toMap()).then((DocumentReference doc) =>
        print('Task Created with with ID: ${doc.id}'));
  }

  updateTask(Task task, String docId) {
    taskCollection!.doc(docId).update(task.toMap());
  }

  deleteTask(String docId) {
    taskCollection!.doc(docId).delete();
  }

  getTasks() {
    taskCollection!.get().then(
      (querySnapshot) {
        print("Successfully completed");
        for (var docSnapshot in querySnapshot.docs) {
          print('${docSnapshot.id} => ${docSnapshot.data()}');
        }
      },
      onError: (e) => print("Error completing: $e"),
    );

    //taskCollection.snapshots().map((QuerySnapshot querySnapshot) => null)
  }
}
