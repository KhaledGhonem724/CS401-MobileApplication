import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});
  static const String id = "CreateTask";
  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("CreateTask"),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          title: const Text('CreateTask'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, tasks.id);
            },
          ),
        ),
      ),
    );
  }
}
