# Select Days Week

A widget to select days of the week

## Features:
- Single and multiple selection
- Select non-selectable days
- Validate selected day
- Customizable selection color

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

