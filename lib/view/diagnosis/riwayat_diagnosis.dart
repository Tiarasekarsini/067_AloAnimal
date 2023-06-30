import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatDiagnosis extends StatefulWidget {
  const RiwayatDiagnosis({super.key});

  @override
  State<RiwayatDiagnosis> createState() => _RiwayatDiagnosisState();
}

class _RiwayatDiagnosisState extends State<RiwayatDiagnosis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Diagnostic History'),
      titleTextStyle: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ));
  }
}
