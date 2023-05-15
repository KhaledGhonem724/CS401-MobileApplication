import 'package:flutter/material.dart';
import 'package:project_app/materials/functionality.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';

class createtasks extends StatefulWidget {
  const createtasks({super.key});
  static const String id = "createtasks";
  @override
  State<createtasks> createState() => _createtasksState();
}

class _createtasksState extends State<createtasks> {
  late String createdTask = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text("Create task", style: TextStyle(fontSize: 30)),
                  ),
                ),
              ),
              TextFormField(
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  setState(() {
                    createdTask = value;
                  });
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        tasksRepoState().createtask(createdTask);
                      },
                      child: const Text("Create")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, tasks.id);
                      },
                      child: const Text("Cansel")),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: primary_color_dark,
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
