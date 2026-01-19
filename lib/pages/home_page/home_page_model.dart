import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> carreras = [];
  void addToCarreras(dynamic item) => carreras.add(item);
  void removeFromCarreras(dynamic item) => carreras.remove(item);
  void removeAtIndexFromCarreras(int index) => carreras.removeAt(index);
  void insertAtIndexInCarreras(int index, dynamic item) =>
      carreras.insert(index, item);
  void updateCarrerasAtIndex(int index, Function(dynamic) updateFn) =>
      carreras[index] = updateFn(carreras[index]);

  List<dynamic> asignaturas = [];
  void addToAsignaturas(dynamic item) => asignaturas.add(item);
  void removeFromAsignaturas(dynamic item) => asignaturas.remove(item);
  void removeAtIndexFromAsignaturas(int index) => asignaturas.removeAt(index);
  void insertAtIndexInAsignaturas(int index, dynamic item) =>
      asignaturas.insert(index, item);
  void updateAsignaturasAtIndex(int index, Function(dynamic) updateFn) =>
      asignaturas[index] = updateFn(asignaturas[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCarreras] action in HomePage widget.
  dynamic cars;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
