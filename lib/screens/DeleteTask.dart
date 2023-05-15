import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';
import 'package:project_app/materials/elements/ContactModel.dart';
import 'package:project_app/materials/functionality.dart';

class deletetask extends StatefulWidget {
  const deletetask({super.key});
  static const String id = "deletetask";
  @override
  State<deletetask> createState() => _deletetaskState();
}

class _deletetaskState extends State<deletetask> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          centerTitle: true,
          title: const Text('Delete Task'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, tasks.id);
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: tasksRepo(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              tasksRepoState().deletetask();
                            },
                            child: const Text(
                                "Delete")), //////////////////////////////////////////////////////////////////////////////
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, tasks.id);
                            },
                            child: const Text("Cansel")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
