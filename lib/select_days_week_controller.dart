import 'package:mobx/mobx.dart';
import 'package:select_days_week/day.dart';

part 'select_days_week_controller.g.dart';

class SelectDaysWeekController = _SelectDaysWeekBase
    with _$SelectDaysWeekController;

abstract class _SelectDaysWeekBase with Store {
  @observable
  ObservableList<Day> days = ObservableList();

  _SelectDaysWeekBase({List<int> unSelectableDays}) {
    days.add(Day(id: 0, name: 'Segunda'));
    days.add(Day(id: 1, name: 'Terça'));
    days.add(Day(id: 2, name: 'Quarta'));
    days.add(Day(id: 3, name: 'Quinta'));
    days.add(Day(id: 4, name: 'Sexta'));
    days.add(Day(id: 5, name: 'Sábado'));
    days.add(Day(id: 6, name: 'Domingo'));
    if (unSelectableDays != null) {
      for (int intDay in unSelectableDays) {
        Day day = days[intDay];
        day.isSelectable = false;
        days[intDay] = day;
      }
    }
  }
}
