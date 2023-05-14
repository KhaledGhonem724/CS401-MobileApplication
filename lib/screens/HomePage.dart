import 'package:flutter/material.dart';
import 'package:project_app/screens/tasks.dart';
import 'package:project_app/materials/colors.dart';
import 'package:project_app/screens/Report.dart';

class page1 extends StatefulWidget {
  const page1({super.key});
  static const String id = "page1";
  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: background_color_dark,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 30,
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                radius: 100,
                child: Image(
                    image: NetworkImage(
                        "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/346818266_1324090205195857_4322970942368331252_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeFcL9Byjg-lsDPSNuBORSguA1W4JCpS2rQDVbgkKlLatD_jGJJTdCPhglYTuKyiDo-jyJDOnXS8DwJDgkiK7uJ3&_nc_ohc=4QoF2ss2lJgAX8XLnMF&_nc_ht=scontent-hbe1-1.xx&oh=00_AfADs9e2qHeiD7QyBxVhbzNY7B0rOTHRfgg_Cy-PLrxmwQ&oe=6464C12F")),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, tasks.id);
                      },
                      color: complementary_color_dark,
                      child: Text("Tasks"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Report.id);
                      },
                      color: complementary_color_dark,
                      child: Text("Report"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, tasks.id);
                      },
                      color: complementary_color_dark,
                      child: Text("About Us"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: primary_color_dark,
          centerTitle: true,
          title: const Text('Home page'),
        ),
      ),
    );
  }
}
