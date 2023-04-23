import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';

class page1 extends StatefulWidget {
  const page1({super.key});
  static const String id = "page1";
  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("page1"),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, tasks.id);
                },
                color: Colors.amber,
                child: Text("to tasks"),
              )
            ],
          ),
        ),
        appBar: AppBar(),
      ),
    );
  }
}
