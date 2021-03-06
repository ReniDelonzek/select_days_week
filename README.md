# Select Days Week 

<img src="https://img.shields.io/github/license/ReniDelonzek/select_days_week">

A widget to select days of the week. 

Pub: https://pub.dev/packages/select_days_week

<p align="center">
  <img src="https://github.com/ReniDelonzek/select_days_week/blob/master/screenshots/Screenshot_1.png?raw=true" width="350px">
</p>

## Features:
- Single and multiple selection
- Select non-selectable days
- Validate selected day
- Customizable selection color
- Possibility to specify days of the week

## Example Use

```
SelectDaysWeekWidget(
    SelectDaysWeekController(
      unSelectableDays: [1, 5],
    ),
    daySelected: (int day) {
      print(day);
    },
);
```

