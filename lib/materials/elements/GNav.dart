import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_app/materials/colors.dart';
import 'package:project_app/screens/HomePage.dart';
import 'package:project_app/screens/tasks.dart';

class Gnav extends StatelessWidget {
  Gnav({super.key});
// EdgeInsets.all(25)
  @override
  Widget build(BuildContext context) {
    return GNav(
      backgroundColor: primary_color_dark,
      color: background_color_dark,
      activeColor: Colors.white,
      tabBackgroundColor: background_color_dark,
      padding: const EdgeInsets.all(20),
      gap: 8,
      tabs: const [
        GButton(
          icon: Icons.home,
          text: 'Home',
          iconSize: 30,
          textSize: 90,
        ),
        GButton(
          icon: Icons.list_alt,
          text: 'Tasks',
          iconSize: 30,
          textSize: 90,
        ),
        GButton(
          icon: Icons.drive_file_rename_outline_rounded,
          text: 'Rebort',
          iconSize: 30,
          textSize: 90,
        ),
        GButton(
          icon: Icons.question_mark,
          text: 'About us',
          iconSize: 30,
          textSize: 90,
        ),
      ],
    );
  }
}
