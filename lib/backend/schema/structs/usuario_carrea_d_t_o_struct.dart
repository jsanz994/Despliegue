// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioCarreaDTOStruct extends BaseStruct {
  UsuarioCarreaDTOStruct({
    String? nombre,
    CarreraStruct? carrera,
  })  : _nombre = nombre,
        _carrera = carrera;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "carrera" field.
  CarreraStruct? _carrera;
  CarreraStruct get carrera => _carrera ?? CarreraStruct();
  set carrera(CarreraStruct? val) => _carrera = val;

  void updateCarrera(Function(CarreraStruct) updateFn) {
    updateFn(_carrera ??= CarreraStruct());
  }

  bool hasCarrera() => _carrera != null;

  static UsuarioCarreaDTOStruct fromMap(Map<String, dynamic> data) =>
      UsuarioCarreaDTOStruct(
        nombre: data['nombre'] as String?,
        carrera: data['carrera'] is CarreraStruct
            ? data['carrera']
            : CarreraStruct.maybeFromMap(data['carrera']),
      );

  static UsuarioCarreaDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? UsuarioCarreaDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'carrera': _carrera?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'carrera': serializeParam(
          _carrera,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UsuarioCarreaDTOStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UsuarioCarreaDTOStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        carrera: deserializeStructParam(
          data['carrera'],
          ParamType.DataStruct,
          false,
          structBuilder: CarreraStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UsuarioCarreaDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioCarreaDTOStruct &&
        nombre == other.nombre &&
        carrera == other.carrera;
  }

  @override
  int get hashCode => const ListEquality().hash([nombre, carrera]);
}

UsuarioCarreaDTOStruct createUsuarioCarreaDTOStruct({
  String? nombre,
  CarreraStruct? carrera,
}) =>
    UsuarioCarreaDTOStruct(
      nombre: nombre,
      carrera: carrera ?? CarreraStruct(),
    );
