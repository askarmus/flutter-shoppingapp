// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderCollapsableTileStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OrderCollapsableTileStore on OrderCollapsableTileStoreInt, Store {
  final _$collapsingTileIconAtom =
      Atom(name: 'OrderCollapsableTileStoreInt.collapsingTileIcon');

  @override
  Icon get collapsingTileIcon {
    _$collapsingTileIconAtom.context
        .enforceReadPolicy(_$collapsingTileIconAtom);
    _$collapsingTileIconAtom.reportObserved();
    return super.collapsingTileIcon;
  }

  @override
  set collapsingTileIcon(Icon value) {
    _$collapsingTileIconAtom.context.conditionallyRunInAction(() {
      super.collapsingTileIcon = value;
      _$collapsingTileIconAtom.reportChanged();
    }, _$collapsingTileIconAtom, name: '${_$collapsingTileIconAtom.name}_set');
  }

  final _$isTileCollapsedAtom =
      Atom(name: 'OrderCollapsableTileStoreInt.isTileCollapsed');

  @override
  bool get isTileCollapsed {
    _$isTileCollapsedAtom.context.enforceReadPolicy(_$isTileCollapsedAtom);
    _$isTileCollapsedAtom.reportObserved();
    return super.isTileCollapsed;
  }

  @override
  set isTileCollapsed(bool value) {
    _$isTileCollapsedAtom.context.conditionallyRunInAction(() {
      super.isTileCollapsed = value;
      _$isTileCollapsedAtom.reportChanged();
    }, _$isTileCollapsedAtom, name: '${_$isTileCollapsedAtom.name}_set');
  }

  final _$OrderCollapsableTileStoreIntActionController =
      ActionController(name: 'OrderCollapsableTileStoreInt');

  @override
  void toggleCollapseTile() {
    final _$actionInfo =
        _$OrderCollapsableTileStoreIntActionController.startAction();
    try {
      return super.toggleCollapseTile();
    } finally {
      _$OrderCollapsableTileStoreIntActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'collapsingTileIcon: ${collapsingTileIcon.toString()},isTileCollapsed: ${isTileCollapsed.toString()}';
    return '{$string}';
  }
}