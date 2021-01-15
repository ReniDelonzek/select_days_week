library select_days_week;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:select_days_week/day.dart';
import 'package:select_days_week/select_days_week_controller.dart';

typedef DaySelected = Function(int);
typedef ValidatorDay = Future<bool> Function(int);

class SelectDaysWeekWidget extends StatelessWidget {
  final SelectDaysWeekController controller;
  final DaySelected daySelected;
  final ValidatorDay validatorDay;
  final Color color;
  final bool singleDay;

  const SelectDaysWeekWidget(this.controller,
      {this.daySelected,
      this.validatorDay,
      this.singleDay = false,
      this.color = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceAround,
      crossAxisAlignment: WrapCrossAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: controller.days
          .map((element) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: _getDay(context, element),
              ))
          .toList(),
    );
  }

  Widget _getDay(BuildContext context, Day day) {
    return Observer(
      builder: (_) => Container(
          width: 45,
          height: 45,
          decoration: new BoxDecoration(
              color: day.isSelectable
                  ? (day.isSelected ? color : Colors.white)
                  : Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(22.5)),
              border: new Border.all(
                  color: day.isSelected ||
                          !day.isSelectable ||
                          Theme.of(context).brightness == Brightness.dark
                      //Caso esteja selecionado ou, não posa ser selecionado
                      ? Colors.transparent
                      : color)),
          child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.white24,
                borderRadius: BorderRadius.all(Radius.circular(22.5)),
                onTap: day.isSelectable
                    ? () async {
                        if (await _validate(day.id)) {
                          if (singleDay) {
                            //Caso somente um dia possa ser selecioado
                            controller.days.forEach((element) {
                              if (element.isSelected && element.id != day.id) {
                                element.isSelected = false;
                              }
                            });
                          }
                          day.isSelected = !day.isSelected;
                          if (daySelected != null) {
                            daySelected(day.id);
                          }
                        }
                      }
                    : null,
                child: Center(
                  child: Text(
                    day.name[0].toUpperCase(),
                    //Pega a primeira letra
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        letterSpacing: 0.27,
                        color: !day.isSelectable
                            ? Colors.black54
                            : day.isSelected
                                ? Colors.white
                                : color),
                  ),
                ),
              ))),
    );
  }

  Future<bool> _validate(int day) async {
    if (validatorDay != null) {
      return await validatorDay(day);
    }
    return true;
  }
}
