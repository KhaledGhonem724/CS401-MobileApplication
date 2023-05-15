import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_app/screens/AboutUs.dart';
import 'package:project_app/screens/AddSession.dart';
import 'package:project_app/screens/CreateTask.dart';
import 'package:project_app/screens/DeleteTask.dart';
import 'package:project_app/screens/HomePage.dart';
import 'package:project_app/screens/Report.dart';
import 'package:project_app/screens/Splash.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        Report.id: (context) => Report(),
        HomePage.id: (context) => const HomePage(),
        tasks.id: (context) => tasks(),
        deletetask.id: (context) => deletetask(),
        AddSession.id: (context) => AddSession(),
        createtasks.id: (context) => createtasks(),
        links.id: (context) => links(),
        splashscreen.id: (context) => splashscreen(),
      },
    );
  }
}
