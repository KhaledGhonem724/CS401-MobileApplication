import 'package:flutter/material.dart';

class Select_Taskes extends StatefulWidget {
  const Select_Taskes({Key? key}) : super(key: key);

  @override
  State<Select_Taskes> createState() => _Select_TaskesState();
}

class _Select_TaskesState extends State<Select_Taskes> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return CheckboxListTile(
          title: const Text('tasks'),
          value: isChecked,
          onChanged: (bool? newBool) {
            setState(() {
              isChecked = newBool;
            });
          },
          activeColor: Colors.green,
          checkColor: Colors.white,
          controlAffinity: ListTileControlAffinity.trailing,
          tristate: true,
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.white,
      ),
    );
  }
}
