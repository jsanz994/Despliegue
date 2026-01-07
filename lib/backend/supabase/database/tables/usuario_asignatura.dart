import '../database.dart';

class UsuarioAsignaturaTable extends SupabaseTable<UsuarioAsignaturaRow> {
  @override
  String get tableName => 'usuario_asignatura';

  @override
  UsuarioAsignaturaRow createRow(Map<String, dynamic> data) =>
      UsuarioAsignaturaRow(data);
}

class UsuarioAsignaturaRow extends SupabaseDataRow {
  UsuarioAsignaturaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioAsignaturaTable();

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  int get idAsignatura => getField<int>('id_asignatura')!;
  set idAsignatura(int value) => setField<int>('id_asignatura', value);
}
