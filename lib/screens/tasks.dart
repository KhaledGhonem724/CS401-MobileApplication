import 'package:flutter/material.dart';
import 'package:project_app/screens/AddSession.dart';
import 'package:project_app/screens/CreateTask.dart';
import 'package:project_app/screens/DeleteTask.dart';
import 'package:project_app/screens/HomePage.dart';
import 'package:project_app/materials/colors.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import '../materials/elements/CircularButton.dart';
import '../materials/elements/TaskCard.dart';

List<String> Tasks = [
  "string 1",
  "string 2",
  "string 3",
  "string 4",
  "string 5",
];

class tasks extends StatefulWidget {
  tasks({super.key});
  static const String id = "tasks";

  @override
  State<tasks> createState() => _tasksState();
}

class _tasksState extends State<tasks> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation degOneTranslationAnimation,
      degTwoTranslationAnimation,
      degThreeTranslationAnimation;
  late Animation rotationAnimation;

  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color_dark,
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          title: const Text('Tasks'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushNamed(context, page1.id);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 6,
              child: SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              mainAxisExtent: 150,
                              childAspectRatio: 4),
                      itemCount: Tasks.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return TaskCard(
                          taskName: Tasks[index],
                        ); ///////////////////////////////////////////////////////////////////////////
                      }),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                  right: 30,
                  bottom: 30,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      IgnorePointer(
                        child: Container(
                          color: Colors.transparent,
                          height: 150.0,
                          width: 150.0,
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(270),
                            degOneTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degOneTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.green,
                            width: 60,
                            height: 60,
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onClick: () {
                              Navigator.pushNamed(context,
                                  createtasks.id); // requier another screen
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(225),
                            degTwoTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degTwoTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.orangeAccent,
                            width: 60,
                            height: 60,
                            icon: Icon(
                              Icons.add_task,
                              color: Colors.white,
                            ),
                            onClick: () {
                              Navigator.pushNamed(context,
                                  AddSession.id); // requier another screen
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset.fromDirection(getRadiansFromDegree(180),
                            degThreeTranslationAnimation.value * 100),
                        child: Transform(
                          transform: Matrix4.rotationZ(
                              getRadiansFromDegree(rotationAnimation.value))
                            ..scale(degThreeTranslationAnimation.value),
                          alignment: Alignment.center,
                          child: CircularButton(
                            color: Colors.red,
                            width: 60,
                            height: 60,
                            icon: Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                            onClick: () {
                              Navigator.pushNamed(context,
                                  deletetask.id); // requier another screen
                            },
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.rotationZ(
                            getRadiansFromDegree(rotationAnimation.value)),
                        alignment: Alignment.center,
                        child: CircularButton(
                          color: primary_color_dark,
                          width: 70,
                          height: 70,
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onClick: () {
                            if (animationController.isCompleted) {
                              animationController.reverse();
                            } else {
                              animationController.forward();
                            }
                          },
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
