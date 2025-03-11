import 'package:mobx/mobx.dart';

part 'progress_store.g.dart';

class ProgressStore = _ProgressStore with _$ProgressStore;

abstract class _ProgressStore with Store {
  @observable
  int progress = 0;

  @action
  void setProgress(int value) {
    progress = value;
  }

}
