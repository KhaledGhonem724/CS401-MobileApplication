import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Calender_CalenderState();
}

class _Calender_CalenderState extends State<Calender> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(height: 500, child: contant()),
    );
  }

  Widget contant() {
    return Column(
      children: [
        Text(
          "selected day = " + today.toString().split(" ")[0],
          style: TextStyle(fontSize: 20),
        ),
        Container(
          child: TableCalendar(
            locale: 'en_US',
            rowHeight: 43,
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2050, 1, 1),
            onDaySelected: _onDaySelected,
          ),
        )
      ],
    );
  }
}
