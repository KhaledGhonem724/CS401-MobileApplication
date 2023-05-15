import 'package:flutter/material.dart';

class ContactModel extends StatefulWidget {
  late String name;
  bool isSelected = false;

  ContactModel({super.key, required this.name});
  @override
  State<ContactModel> createState() => _ContactModelState(name, false);
}

class _ContactModelState extends State<ContactModel> {
  Color color = Colors.grey;
  late String name;
  bool isSelected = false;
  _ContactModelState(this.name, this.isSelected);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        trailing: IconButton(
            onPressed: () {
              setState(() {
                if (color == Colors.green) {
                  color = Colors.grey;
                } else {
                  color = Colors.green;
                }
                isSelected = !isSelected;
              });
            },
            icon: Icon(
              Icons.check_circle_outline,
              color: color,
            )));
  }
}

/*

setState(() {
          contacts[index].isSelected = !contacts[index].isSelected;
          if (contacts[index].isSelected) {
            selectedContacts.add(ContactModel(name, true));
          } else if (contacts[index].isSelected == false) {
            selectedContacts
                .removeWhere((element) => element.name == contacts[index].name);
          }
        }


*/