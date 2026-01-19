import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);

  String? get contrasena => getField<String>('contrasena');
  set contrasena(String? value) => setField<String>('contrasena', value);

  int? get idCarrera => getField<int>('id_carrera');
  set idCarrera(int? value) => setField<int>('id_carrera', value);
}
