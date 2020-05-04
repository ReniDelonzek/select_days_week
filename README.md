# select_days_week

A widget to select days of the week

Example Use:

```SelectDaysWeekWidget(
    SelectDaysWeekController(
      unSelectableDays: [1, 5],
    ),
    daySelected: (int day) {
      print(day);
    },
);```