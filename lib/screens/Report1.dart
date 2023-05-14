import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_app/screens/selectTasks.dart';
import 'package:project_app/screens/Report.dart';
import 'package:project_app/materials/elements/calender.dart';
import 'package:project_app/screens/viewReport.dart';

class Report1 extends StatefulWidget {
  const Report1({Key? key}) : super(key: key);

  @override
  State<Report1> createState() => _Report1State();
}

class _Report1State extends State<Report1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('From', style: TextStyle(fontSize: 30, color: Colors.white)),
              Text('To', style: TextStyle(fontSize: 30, color: Colors.white)),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Calender();
                        });
                  },
                  icon: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        // <-- SEE HERE
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Calender();
                      },
                    );
                    // ignore: prefer_const_constructors
                  },
                  icon: Icon(Icons.calendar_month, color: Colors.white)),
            ],
          ),
          Container(
              child: Expanded(
            child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      // <-- SEE HERE
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Select_Taskes();
                    },
                  );
                  // ignore: prefer_const_constructors
                },
                child: Text(
                  'Select Tasks',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          )),
          Container(
              child: Expanded(
            child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      // <-- SEE HERE
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return View_Report();
                    },
                  );
                  // ignore: prefer_const_constructors
                },
                child: Text(
                  'View Report',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
          )),
        ],
      ),
    );
  }
}
