import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';
import 'dart:developer';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_app/screens/ContactModel.dart';

class deletetask extends StatefulWidget {
  const deletetask({super.key});
  static const String id = "deletetask";
  @override
  State<deletetask> createState() => _deletetaskState();
}

class _deletetaskState extends State<deletetask> {
  List<String> contacts = [
    "string 1",
    "string 2",
    "string 3",
    "string 4",
    "string 5",
  ];
  List<ContactModel> selectedContacts = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Delete Task'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed;
                  //استدعاء من كلاس اخر نكتب.....
                  //(context, Welecom.id);
                },
                icon: Icon(Icons.logout)),
          ],
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (BuildContext context, index) {
                        return ContactModel(contacts[index], true)
                            .build(context);
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Create")),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Cansel")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
