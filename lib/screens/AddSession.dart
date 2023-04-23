import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';

class AddSession extends StatefulWidget {
  const AddSession({super.key});
  static const String id = "AddSession";
  @override
  State<AddSession> createState() => _AddSessionState();
}

class _AddSessionState extends State<AddSession> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("AddSession"),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          title: const Text('AddSession'),
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
