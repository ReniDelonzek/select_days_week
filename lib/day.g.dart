// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Day on _Day, Store {
  final _$isSelectedAtom = Atom(name: '_Day.isSelected');

  @override
  bool get isSelected {
    _$isSelectedAtom.context.enforceReadPolicy(_$isSelectedAtom);
    _$isSelectedAtom.reportObserved();
    return super.isSelected;
  }

  @override
  set isSelected(bool value) {
    _$isSelectedAtom.context.conditionallyRunInAction(() {
      super.isSelected = value;
      _$isSelectedAtom.reportChanged();
    }, _$isSelectedAtom, name: '${_$isSelectedAtom.name}_set');
  }

  final _$isSelectableAtom = Atom(name: '_Day.isSelectable');

  @override
  bool get isSelectable {
    _$isSelectableAtom.context.enforceReadPolicy(_$isSelectableAtom);
    _$isSelectableAtom.reportObserved();
    return super.isSelectable;
  }

  @override
  set isSelectable(bool value) {
    _$isSelectableAtom.context.conditionallyRunInAction(() {
      super.isSelectable = value;
      _$isSelectableAtom.reportChanged();
    }, _$isSelectableAtom, name: '${_$isSelectableAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'isSelected: ${isSelected.toString()},isSelectable: ${isSelectable.toString()}';
    return '{$string}';
  }
}
