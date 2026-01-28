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

  List<UsuarioDTOStruct> _currentUsers = [];
  List<UsuarioDTOStruct> get currentUsers => _currentUsers;
  set currentUsers(List<UsuarioDTOStruct> value) {
    _currentUsers = value;
  }

  void addToCurrentUsers(UsuarioDTOStruct value) {
    currentUsers.add(value);
  }

  void removeFromCurrentUsers(UsuarioDTOStruct value) {
    currentUsers.remove(value);
  }

  void removeAtIndexFromCurrentUsers(int index) {
    currentUsers.removeAt(index);
  }

  void updateCurrentUsersAtIndex(
    int index,
    UsuarioDTOStruct Function(UsuarioDTOStruct) updateFn,
  ) {
    currentUsers[index] = updateFn(_currentUsers[index]);
  }

  void insertAtIndexInCurrentUsers(int index, UsuarioDTOStruct value) {
    currentUsers.insert(index, value);
  }

  List<UsuarioCarreaDTOStruct> _usuarioscarreras = [];
  List<UsuarioCarreaDTOStruct> get usuarioscarreras => _usuarioscarreras;
  set usuarioscarreras(List<UsuarioCarreaDTOStruct> value) {
    _usuarioscarreras = value;
  }

  void addToUsuarioscarreras(UsuarioCarreaDTOStruct value) {
    usuarioscarreras.add(value);
  }

  void removeFromUsuarioscarreras(UsuarioCarreaDTOStruct value) {
    usuarioscarreras.remove(value);
  }

  void removeAtIndexFromUsuarioscarreras(int index) {
    usuarioscarreras.removeAt(index);
  }

  void updateUsuarioscarrerasAtIndex(
    int index,
    UsuarioCarreaDTOStruct Function(UsuarioCarreaDTOStruct) updateFn,
  ) {
    usuarioscarreras[index] = updateFn(_usuarioscarreras[index]);
  }

  void insertAtIndexInUsuarioscarreras(
      int index, UsuarioCarreaDTOStruct value) {
    usuarioscarreras.insert(index, value);
  }
}
