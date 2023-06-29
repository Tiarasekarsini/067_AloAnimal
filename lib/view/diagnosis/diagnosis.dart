import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Important Things'),
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 247, 0),
          ),
        ),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(padding: const EdgeInsets.only(top: 10)),
            Text(
              'Halaman Diagnosis',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ]),
        ));
  }
}
