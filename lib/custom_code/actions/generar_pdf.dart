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

Future<FFUploadedFile> generarPdf(List<UsuarioStruct> alumnos) async {
  // Add your function code here!
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Padding(
          padding: const pw.EdgeInsets.all(32),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(
                "Listado de Alumnos",
                style: pw.TextStyle(
                  fontSize: 28,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.ListView.builder(
                itemCount: alumnos.length,
                itemBuilder: (context, index) {
                  return pw.Text(
                    "- ${alumnos[index]}",
                    style: pw.TextStyle(fontSize: 16),
                  );
                },
              ),
            ],
          ),
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
