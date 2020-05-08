import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:select_days_week/select_days_week_controller.dart';
import 'package:select_days_week/select_days_week_widget.dart';

void main() => runApp(new Example());

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SelectDaysWeekWidget(
        SelectDaysWeekController(unSelectableDays: [
          1,
          5
        ], specificDays: [
          DateTime(2000, 01, 03),
          DateTime(2000, 01, 06),
          DateTime(2000, 01, 07),
          DateTime(2000, 01, 08),
          //any days
        ]),
        color: Colors.green,
        singleDay: false,
        validatorDay: (int day) async {
          return day != 2;
        },
        daySelected: (int day) {
          print(day);
        },
      ),
    );
  }
}
