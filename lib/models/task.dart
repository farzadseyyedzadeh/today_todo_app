class Task {
  final String title;
  bool isDone;
  void Function()? onPressed;

  Task({required this.title, required this.isDone, required this.onPressed});
}
