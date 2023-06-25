import 'package:flutter/material.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(padding: const EdgeInsets.only(top: 10)),
        Text(
          'Halaman Diagnosis',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ]),
    ));
  }
}
