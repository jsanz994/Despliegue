// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    int? id,
    String? email,
    String? nombre,
    String? apellido,
    String? rol,
    String? contrasena,
    int? idCarrera,
  })  : _id = id,
        _email = email,
        _nombre = nombre,
        _apellido = apellido,
        _rol = rol,
        _contrasena = contrasena,
        _idCarrera = idCarrera;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  set apellido(String? val) => _apellido = val;

  bool hasApellido() => _apellido != null;

  // "rol" field.
  String? _rol;
  String get rol => _rol ?? '';
  set rol(String? val) => _rol = val;

  bool hasRol() => _rol != null;

  // "contrasena" field.
  String? _contrasena;
  String get contrasena => _contrasena ?? '';
  set contrasena(String? val) => _contrasena = val;

  bool hasContrasena() => _contrasena != null;

  // "id_carrera" field.
  int? _idCarrera;
  int get idCarrera => _idCarrera ?? 0;
  set idCarrera(int? val) => _idCarrera = val;

  void incrementIdCarrera(int amount) => idCarrera = idCarrera + amount;

  bool hasIdCarrera() => _idCarrera != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        nombre: data['nombre'] as String?,
        apellido: data['apellido'] as String?,
        rol: data['rol'] as String?,
        contrasena: data['contrasena'] as String?,
        idCarrera: castToType<int>(data['id_carrera']),
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'nombre': _nombre,
        'apellido': _apellido,
        'rol': _rol,
        'contrasena': _contrasena,
        'id_carrera': _idCarrera,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'apellido': serializeParam(
          _apellido,
          ParamType.String,
        ),
        'rol': serializeParam(
          _rol,
          ParamType.String,
        ),
        'contrasena': serializeParam(
          _contrasena,
          ParamType.String,
        ),
        'id_carrera': serializeParam(
          _idCarrera,
          ParamType.int,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        apellido: deserializeParam(
          data['apellido'],
          ParamType.String,
          false,
        ),
        rol: deserializeParam(
          data['rol'],
          ParamType.String,
          false,
        ),
        contrasena: deserializeParam(
          data['contrasena'],
          ParamType.String,
          false,
        ),
        idCarrera: deserializeParam(
          data['id_carrera'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct &&
        id == other.id &&
        email == other.email &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        rol == other.rol &&
        contrasena == other.contrasena &&
        idCarrera == other.idCarrera;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, email, nombre, apellido, rol, contrasena, idCarrera]);
}

UsuarioStruct createUsuarioStruct({
  int? id,
  String? email,
  String? nombre,
  String? apellido,
  String? rol,
  String? contrasena,
  int? idCarrera,
}) =>
    UsuarioStruct(
      id: id,
      email: email,
      nombre: nombre,
      apellido: apellido,
      rol: rol,
      contrasena: contrasena,
      idCarrera: idCarrera,
    );
