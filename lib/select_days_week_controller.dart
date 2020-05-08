import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:select_days_week/day.dart';

part 'select_days_week_controller.g.dart';

class SelectDaysWeekController = _SelectDaysWeekBase
    with _$SelectDaysWeekController;

abstract class _SelectDaysWeekBase with Store {
  @observable
  ObservableList<Day> days = ObservableList();

  _SelectDaysWeekBase(
      {List<int> unSelectableDays,
      List<DateTime> specificDays,
      String localName}) {
    if (localName != null) {
      initializeDateFormatting(localName);
    }
    days.addAll(weekDays(
        specificDays ??
            [
              DateTime(2000, 1, 2, 1),
              DateTime(2000, 1, 3, 1),
              DateTime(2000, 1, 4, 1),
              DateTime(2000, 1, 5, 1),
              DateTime(2000, 1, 6, 1),
              DateTime(2000, 1, 7, 1),
              DateTime(2000, 1, 8, 1),
            ],
        localeName: localName));
    if (unSelectableDays != null) {
      for (int intDay in unSelectableDays) {
        if (days.any((element) => element.id == intDay)) {
          int indexDay = days.indexWhere((element) => element.id == intDay);
          if (indexDay >= 0) {
            Day day = days[indexDay];
            day.isSelectable = false;
            days[indexDay] = day;
          }
        }
      }
    }
  }

  static List<Day> weekDays(List<DateTime> dates, {String localeName}) {
    DateFormat formatter = DateFormat(DateFormat.ABBR_WEEKDAY, localeName);
    return dates
        .map((day) => Day(id: day.weekday, name: formatter.format(day)))
        .toList();
  }
}
