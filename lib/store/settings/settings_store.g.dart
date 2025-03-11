// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsStore on _SettingsStore, Store {
  late final _$soundEnabledAtom =
      Atom(name: '_SettingsStore.soundEnabled', context: context);

  @override
  bool get soundEnabled {
    _$soundEnabledAtom.reportRead();
    return super.soundEnabled;
  }

  @override
  set soundEnabled(bool value) {
    _$soundEnabledAtom.reportWrite(value, super.soundEnabled, () {
      super.soundEnabled = value;
    });
  }

  late final _$masterModeAtom =
      Atom(name: '_SettingsStore.masterMode', context: context);

  @override
  bool get masterMode {
    _$masterModeAtom.reportRead();
    return super.masterMode;
  }

  @override
  set masterMode(bool value) {
    _$masterModeAtom.reportWrite(value, super.masterMode, () {
      super.masterMode = value;
    });
  }

  late final _$priceListAtom =
      Atom(name: '_SettingsStore.priceList', context: context);

  @override
  ObservableList<Map<String, TextEditingController>> get priceList {
    _$priceListAtom.reportRead();
    return super.priceList;
  }

  @override
  set priceList(ObservableList<Map<String, TextEditingController>> value) {
    _$priceListAtom.reportWrite(value, super.priceList, () {
      super.priceList = value;
    });
  }

  late final _$decimalToggleAtom =
      Atom(name: '_SettingsStore.decimalToggle', context: context);

  @override
  bool get decimalToggle {
    _$decimalToggleAtom.reportRead();
    return super.decimalToggle;
  }

  @override
  set decimalToggle(bool value) {
    _$decimalToggleAtom.reportWrite(value, super.decimalToggle, () {
      super.decimalToggle = value;
    });
  }

  late final _$_SettingsStoreActionController =
      ActionController(name: '_SettingsStore', context: context);

  @override
  void setSoundEnabled(bool? value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.setSoundEnabled');
    try {
      return super.setSoundEnabled(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMasterMode(bool? value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.setMasterMode');
    try {
      return super.setMasterMode(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addPriceRow() {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.addPriceRow');
    try {
      return super.addPriceRow();
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removePriceRow(int index) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.removePriceRow');
    try {
      return super.removePriceRow(index);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleDecimal(bool value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.toggleDecimal');
    try {
      return super.toggleDecimal(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
soundEnabled: ${soundEnabled},
masterMode: ${masterMode},
priceList: ${priceList},
decimalToggle: ${decimalToggle}
    ''';
  }
}
