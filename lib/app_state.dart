import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  UsuarioStruct _currentUser = UsuarioStruct();
  UsuarioStruct get currentUser => _currentUser;
  set currentUser(UsuarioStruct value) {
    _currentUser = value;
  }

  void updateCurrentUserStruct(Function(UsuarioStruct) updateFn) {
    updateFn(_currentUser);
  }
}
