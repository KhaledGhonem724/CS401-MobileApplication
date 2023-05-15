import 'package:flutter/material.dart';
import 'package:project_app/materials/colors.dart';

class TaskCard extends StatefulWidget {
  TaskCard({super.key, required this.taskName});
  late String taskName;

  @override
  State<TaskCard> createState() => _TaskCardState(taskName: taskName);
}

class _TaskCardState extends State<TaskCard> {
  final stopwatch = Stopwatch();
  late String taskName = "";
  _TaskCardState({required this.taskName});

  @override
  Widget build(BuildContext context) {
    return Container(
      // this is a class
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: complementary_color_dark,
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                        taskName), /////////////////////////////////////////////////////////////////////////////////////////////////////
                  ),
                  Text(stopwatch.elapsed.toString().substring(0,
                      7)), ////////////////////////////////////////////////////////////////////////
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: complementary_color_dark),
                          onPressed: () {
                            setState(() {
                              if (stopwatch.isRunning) {
                                stopwatch.stop();
                                used = paused;
                              } else {
                                stopwatch.start();
                                used = running;
                              }
                            });
                          },
                          child: used),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: complementary_color_dark),
                          onPressed: () {
                            setState(() {
                              stopwatch.reset();
                            });
                            ///// push value to database //////////////////////////////////////////////////////////////////////////////
                          },
                          child: reset),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
