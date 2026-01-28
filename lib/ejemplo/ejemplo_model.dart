import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ejemplo_widget.dart' show EjemploWidget;
import 'package:flutter/material.dart';

class EjemploModel extends FlutterFlowModel<EjemploWidget> {
  ///  Local state fields for this page.

  bool pdfState = false;

  List<UsuarioStruct> listUsuarios = [];
  void addToListUsuarios(UsuarioStruct item) => listUsuarios.add(item);
  void removeFromListUsuarios(UsuarioStruct item) => listUsuarios.remove(item);
  void removeAtIndexFromListUsuarios(int index) => listUsuarios.removeAt(index);
  void insertAtIndexInListUsuarios(int index, UsuarioStruct item) =>
      listUsuarios.insert(index, item);
  void updateListUsuariosAtIndex(int index, Function(UsuarioStruct) updateFn) =>
      listUsuarios[index] = updateFn(listUsuarios[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCarreras] action in Button widget.
  dynamic alum;
  // Stores action output result for [Custom Action - generarPdf] action in Button widget.
  FFUploadedFile? pdfs;
  bool isDataUploading_uploadData0p9 = false;
  FFUploadedFile uploadedLocalFile_uploadData0p9 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData0p9 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
