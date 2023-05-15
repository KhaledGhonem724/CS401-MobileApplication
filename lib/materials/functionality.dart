import 'package:flutter/material.dart';
import 'package:project_app/materials/elements/ContactModel.dart';
import 'package:project_app/screens/tasks.dart';

class tasksRepo extends StatefulWidget {
  tasksRepo({super.key});

  @override
  State<tasksRepo> createState() => tasksRepoState();
}

class tasksRepoState extends State<tasksRepo> {
  List<ContactModel> tasksList = [
    ContactModel(name: "string 0"),
    ContactModel(name: "string 1"),
    ContactModel(name: "string 2"),
    ContactModel(name: "string 3"),
  ];
  void deletetask() {
    for (ContactModel model in tasksList) {
      if (model.isSelected) {
        setState(() {
          tasksList.remove(model);
        });
      }
    }
  }

  void createtask(String NAME) {
    setState(() {
      tasksList.add(ContactModel(
        name: NAME,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (ContactModel i in tasksList) i], ///////
    );
  }
}

timeData toTime(int mlsec) {
  int sec = (mlsec / 1000).toInt();
  int min = (sec / 60).toInt();
  sec %= 60;
  int hr = (min / 60).toInt();
  min %= 60;
  return timeData(hr, min, sec);
}

class timeData {
  int hr = 0, min = 0, sec = 0;
  timeData(int hr, int min, int sec) {
    this.hr = hr;
    this.min = min;
    this.sec = sec;
  }
}

class sessionData {
  String taskName = "";
  timeData sessionTime = timeData(0, 0, 0);
  DateTime sessionDate = DateTime.now();
  sessionData(String taskName, timeData sessionTime, DateTime sessionDate) {
    this.taskName = taskName;
    this.sessionTime = sessionTime;
    this.sessionDate = sessionDate;
  }
}
