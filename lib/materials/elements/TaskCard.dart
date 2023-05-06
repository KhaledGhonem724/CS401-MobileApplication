import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color color;
  final void Function() reset;
  final void Function() play;
  String taskName;

  TaskCard(
      {required this.taskName,
      required this.color,
      required this.play,
      required this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
      // this is a class
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
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
                    child: Text("taskName"),
                  ),
                  Text("00:00:00 "),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: play,
                        icon: Icon(Icons.play_arrow),
                      ),
                      IconButton(
                        onPressed: reset,
                        icon: Icon(Icons.restart_alt),
                      )
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
