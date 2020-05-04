import 'package:mobx/mobx.dart';

part 'day.g.dart';

class Day = _Day with _$Day;

abstract class _Day with Store {
  int id;
  String name;
  @observable
  bool isSelected;
  @observable
  bool isSelectable;
  _Day({
    this.id,
    this.name,
    this.isSelected = false,
    this.isSelectable = true,
  });
}
