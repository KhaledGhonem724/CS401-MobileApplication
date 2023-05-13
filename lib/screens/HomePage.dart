import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color_dark,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("home page"),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, tasks.id);
                },
                color: complementary_color_dark,
                child: Text("Tasks"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, tasks.id);
                },
                color: complementary_color_dark,
                child: Text("Report"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, tasks.id);
                },
                color: complementary_color_dark,
                child: Text("About Us"),
              ),
            ],
          ),
        ),
        appBar: AppBar(),
      ),
    );
  }
}
