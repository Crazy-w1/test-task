// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProgressStore on _ProgressStore, Store {
  late final _$progressAtom =
      Atom(name: '_ProgressStore.progress', context: context);

  @override
  int get progress {
    _$progressAtom.reportRead();
    return super.progress;
  }

  @override
  set progress(int value) {
    _$progressAtom.reportWrite(value, super.progress, () {
      super.progress = value;
    });
  }

  late final _$_ProgressStoreActionController =
      ActionController(name: '_ProgressStore', context: context);

  @override
  void setProgress(int value) {
    final _$actionInfo = _$_ProgressStoreActionController.startAction(
        name: '_ProgressStore.setProgress');
    try {
      return super.setProgress(value);
    } finally {
      _$_ProgressStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
progress: ${progress}
    ''';
  }
}
