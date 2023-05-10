import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';
import '../materials/elements/GNav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color_dark,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: background_color_dark,
            ),
            Container(
              child: CircleAvatar(
                radius: 110,
                backgroundColor: primary_color_dark,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Gnav(),
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          title: Center(
            child: Text("Home"),
          ),
        ),
      ),
    );
  }
}
