// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioDTOStruct extends BaseStruct {
  UsuarioDTOStruct({
    String? nombre,
    String? rol,
  })  : _nombre = nombre,
        _rol = rol;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  set rol(String? val) => _rol = val;

  bool hasRol() => _rol != null;

  static UsuarioDTOStruct fromMap(Map<String, dynamic> data) =>
      UsuarioDTOStruct(
        nombre: data['nombre'] as String?,
        rol: data['rol'] as String?,
      );

  static UsuarioDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? UsuarioDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'rol': _rol,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuarioDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioDTOStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        rol: deserializeParam(
          data['rol'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioDTOStruct &&
        nombre == other.nombre &&
        rol == other.rol;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, rol]);
}

UsuarioDTOStruct createUsuarioDTOStruct({
  String? nombre,
  String? rol,
}) =>
    UsuarioDTOStruct(
      nombre: nombre,
      rol: rol,
    );
