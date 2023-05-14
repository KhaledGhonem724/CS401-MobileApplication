import 'package:flutter/material.dart';

class View_Report extends StatefulWidget {
  const View_Report({Key? key}) : super(key: key);
  @override
  State<View_Report> createState() => _View_ReportState();
}

class _View_ReportState extends State<View_Report> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: const Text('tasks'),
          trailing: Text("0000000"),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.white,
      ),
    );
  }
}
