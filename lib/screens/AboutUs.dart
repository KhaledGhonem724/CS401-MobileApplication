import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project_app/materials/colors.dart';

class links extends StatefulWidget {
  const links({super.key});
  static const String id = "links";
  @override
  State<links> createState() => _linksState();
}

class _linksState extends State<links> {
  var defaultText = TextStyle(color: Colors.black);
  var LinkText = TextStyle(color: Colors.blue);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Rajdhani"),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('About as')),
          backgroundColor: primary_color_dark,
        ),
        backgroundColor: background_color_dark,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Text(
                'task manager helps you organize your tricks and not waste your time so that anything you do counts the time, for example: \nstudying\nplaying\nsurfing on the Internet\nexercising',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(style: defaultText, text: "To learn more"),
                  TextSpan(
                      style: LinkText,
                      text: "Click here",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchUrl(
                            Uri(
                                path:
                                    "https://github.com/KhaledGhonem724/Application"),
                          );
                        })
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
