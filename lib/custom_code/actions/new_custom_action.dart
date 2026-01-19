// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future newCustomAction(
  int id,
  String nombre,
) async {
  // Add your function code here!
  final supabase = Supabase.instance.client;
  await supabase.from('usuario').update({'nombre': nombre}).eq('id', id);
}
