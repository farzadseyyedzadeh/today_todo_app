import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'today.dart';

void main() async {
  await Hive.initFlutter();
  // ignore: unused_local_variable
  var box = await Hive.openBox('mybox');
  runApp(const Today());
}
