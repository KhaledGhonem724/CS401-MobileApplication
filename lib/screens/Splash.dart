import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';
import 'package:project_app/screens/HomePage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});
  static const String id = "splashscreen";
  @override
  State<splashscreen> createState() => _splashscreen();
}

class _splashscreen extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: HomePage(),
      image: Image(
        image: AssetImage("image/app intro Dark.png"),
        width: 400,
        height: 400,
      ),
      title: Text(
        "clock",
        style: TextStyle(fontSize: 25, color: Colors.blueAccent),
      ),
      backgroundColor: Colors.white,
      loadingText: Text("Loading"),
      photoSize: 150,
      loaderColor: Colors.red,
    );
  }
}
