import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333A47),
        body: Column(
          children: [
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2100, 1, 1),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.white70,
              dayColor: Colors.teal[200],
              activeDayColor: Colors.white,
              activeBackgroundDayColor: Colors.redAccent[100],
              dotsColor: Color(0xFF333A47),
              locale: 'vi',
            ),
          ],
        ));
  }
}
