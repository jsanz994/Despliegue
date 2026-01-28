// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarreraStruct extends BaseStruct {
  CarreraStruct({
    String? nombre,
  }) : _nombre = nombre;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  static CarreraStruct fromMap(Map<String, dynamic> data) => CarreraStruct(
        nombre: data['nombre'] as String?,
      );

  static CarreraStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarreraStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
      }.withoutNulls;

  static CarreraStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarreraStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CarreraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarreraStruct && nombre == other.nombre;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre]);
}

CarreraStruct createCarreraStruct({
  String? nombre,
}) =>
    CarreraStruct(
      nombre: nombre,
    );
