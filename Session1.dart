void main() {
  // Number: int, double

  // var, dynamic and Object
  int followers = 344;
  double viewTime = 4.5;

  //print("followers: " + followers.toString());
  print("followers: $followers ViewTime: $viewTime");

  //String message = "This is an awesome day";
  //String message = 'This is an awesome day';
  String? message = null; // Optional (which can hold null)
  print("Message is: $message");

  // Null Safety -> with ! operator -> we will explore in flutter

  bool isInternetEnabled = true;
  bool isGPSEnabled = false;

  // Record
  var postData = ('Flutter', 150, user: "k_ishant");
  print("postData type:" + postData.runtimeType.toString());

  print("Post Data: ${postData.$1}");
  print("Post Data: ${postData.$2}");
  print("Post Data: ${postData.user}");
}
