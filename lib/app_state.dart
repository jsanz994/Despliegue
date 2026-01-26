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

  List<String> _listaNombres = ['Container 1', 'Container 2'];
  List<String> get listaNombres => _listaNombres;
  set listaNombres(List<String> value) {
    _listaNombres = value;
  }

  void addToListaNombres(String value) {
    listaNombres.add(value);
  }

  void removeFromListaNombres(String value) {
    listaNombres.remove(value);
  }

  void removeAtIndexFromListaNombres(int index) {
    listaNombres.removeAt(index);
  }

  void updateListaNombresAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaNombres[index] = updateFn(_listaNombres[index]);
  }

  void insertAtIndexInListaNombres(int index, String value) {
    listaNombres.insert(index, value);
  }

  List<String> _listaApellidos = ['Final 1', 'Final 2'];
  List<String> get listaApellidos => _listaApellidos;
  set listaApellidos(List<String> value) {
    _listaApellidos = value;
  }

  void addToListaApellidos(String value) {
    listaApellidos.add(value);
  }

  void removeFromListaApellidos(String value) {
    listaApellidos.remove(value);
  }

  void removeAtIndexFromListaApellidos(int index) {
    listaApellidos.removeAt(index);
  }

  void updateListaApellidosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaApellidos[index] = updateFn(_listaApellidos[index]);
  }

  void insertAtIndexInListaApellidos(int index, String value) {
    listaApellidos.insert(index, value);
  }
}
