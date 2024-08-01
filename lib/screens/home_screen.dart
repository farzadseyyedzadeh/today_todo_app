import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:today_todo_app/data/database.dart';
import 'package:today_todo_app/theme/my_color.dart';
import 'package:today_todo_app/widgets/dialog_box.dart';
import 'package:today_todo_app/widgets/no_task.dart';
import 'package:today_todo_app/widgets/side_drawer.dart';
import 'package:today_todo_app/widgets/task_card.dart';
import 'package:today_todo_app/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();
  @override
  void initState() {
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final _textController = TextEditingController();

  checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateData();
  }

  void saveNewTask() {
    setState(() {
      db.todoList.add([_textController.text, false]);
      _textController.clear();
    });
    Navigator.of(context).pop();
    db.updateData();
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: _textController,
          onCancel: () => Navigator.of(context).pop(),
          onSave: saveNewTask,
        );
      },
    );
    db.updateData();
  }

  onCheck(int index) {
    setState(() {
      db.todoList[index][1] = !db.todoList[index][1];
    });
    db.updateData();
  }

  void deleteTask(int index) {
    final _lastRemovedTask = db.todoList[index];
    setState(() {
      db.todoList.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: MyColor().fireEngineRed,
      showCloseIcon: true,
      content: const Text('task deleted'),
      action: SnackBarAction(
          label: 'UNDO',
          onPressed: () {
            setState(() {
              db.todoList.insert(index, _lastRemovedTask);
            });
          }),
    ));
    db.updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor().antiFlashWhite,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: MyColor().spaceCadet,
          foregroundColor: MyColor().antiFlashWhite,
          title: const Text('Today'),
          centerTitle: true,
        ),
        drawer: const SideDrawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: MyColor().pantoneRed,
          shape: const CircleBorder(),
          onPressed: createNewTask,
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBar(),
        body: db.todoList.isEmpty
            ? const NoTask()
            : ListView.builder(
                itemCount: db.todoList.length,
                itemBuilder: (context, index) {
                  return TaskCard(
                    title: db.todoList[index][0],
                    doneTime: DateTime.now(),
                    isDone: db.todoList[index][1],
                    onPressed: (value) => checkBoxChanged(value, index),
                    onCheck: (context) => onCheck(index),
                    deleteFunction: (context) => deleteTask(index),
                  );
                },
              ));
  }
}
