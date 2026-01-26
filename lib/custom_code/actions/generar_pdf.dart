// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<FFUploadedFile> generarPdf() async {
  // Add your function code here!
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text("Hola, este es mi PDF sencillo!"),
        );
      },
    ),
  );

  final bytes = await pdf.save();
  final file = FFUploadedFile(
    name: 'mi_pdf.pdf', // nombre que verá el usuario al descargar
    bytes: bytes,
  );
  return file;
}
