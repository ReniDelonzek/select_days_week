// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_days_week_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SelectDaysWeekController on _SelectDaysWeekBase, Store {
  final _$daysAtom = Atom(name: '_SelectDaysWeekBase.days');

  @override
  ObservableList<Day> get days {
    _$daysAtom.context.enforceReadPolicy(_$daysAtom);
    _$daysAtom.reportObserved();
    return super.days;
  }

  @override
  set days(ObservableList<Day> value) {
    _$daysAtom.context.conditionallyRunInAction(() {
      super.days = value;
      _$daysAtom.reportChanged();
    }, _$daysAtom, name: '${_$daysAtom.name}_set');
  }

  @override
  String toString() {
    final string = 'days: ${days.toString()}';
    return '{$string}';
  }
}
