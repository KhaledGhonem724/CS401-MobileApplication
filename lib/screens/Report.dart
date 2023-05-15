// ignore_for_file: unnecessary_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:project_app/screens/Report1.dart';
import 'package:project_app/screens/HomePage.dart';
import 'package:project_app/materials/colors.dart';

class Report extends StatefulWidget {
  static const String id = 'report';
  @override
  State<Report> createState() => _Report_ReportState();
}

class _Report_ReportState extends State<Report> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color_dark,
      appBar: AppBar(
        backgroundColor: primary_color_dark,
        title: Center(child: Text('Report')),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, HomePage.id);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Report1(),
    );
  }
}
