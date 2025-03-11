import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  @observable
  bool soundEnabled = false;

  @observable
  bool masterMode = false;

  @observable
  ObservableList<Map<String, TextEditingController>> priceList = ObservableList.of([
    {
      'number': TextEditingController(),
      'price': TextEditingController(),
    }
  ]);

  @observable
  bool decimalToggle = true; // true - левая часть (Используется), false - правая (Не используется)

  @action
  void setSoundEnabled(bool? value) {
    soundEnabled = value ?? false;
  }

  @action
  void setMasterMode(bool? value) {
    masterMode = value ?? false;
  }

  @action
  void addPriceRow() {
    priceList.add({
      'number': TextEditingController(),
      'price': TextEditingController(),
    });
  }

  @action
  void removePriceRow(int index) {
    priceList.removeAt(index);
  }

  @action
  void toggleDecimal(bool value) {
    decimalToggle = value; // Переключаем состояние
  }
}