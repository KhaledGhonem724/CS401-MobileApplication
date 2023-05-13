// ignore_for_file: unnecessary_import, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:project_app/screens/Report1.dart';

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
      appBar: AppBar(
        title: Center(child: Text('Report')),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Report1(),
    );
  }
}
