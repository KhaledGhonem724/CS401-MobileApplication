import 'package:flutter/material.dart';
import 'package:project_app/materials/colors.dart';

class TaskCard extends StatefulWidget {
  TaskCard({super.key, required this.taskName});
  late final String taskName;

  @override
  State<TaskCard> createState() => _TaskCardState(taskName);
}

class _TaskCardState extends State<TaskCard> {
  final stopwatch = Stopwatch();
  late final String taskName;
  _TaskCardState(String str) {
    this.taskName = str;
  }
  Icon running = Icon(
    Icons.pause,
    color: primary_color_dark,
    size: 30,
  );
  Icon paused = Icon(
    Icons.play_arrow,
    color: Colors.green,
    size: 30,
  );
  Icon used = Icon(
    Icons.play_arrow,
    color: Colors.green,
    size: 30,
  );
  Icon reset = Icon(
    Icons.refresh,
    color: Colors.red,
    size: 30,
  );

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
                  const Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                        ""), /////////////////////////////////////////////////////////////////////////////////////////////////////
                  ),
                  Text(stopwatch.elapsed
                      .toString()), ////////////////////////////////////////////////////////////////////////
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primary_color_dark),
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
                              backgroundColor: primary_color_dark),
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
