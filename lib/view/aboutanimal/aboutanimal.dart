import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAnimal extends StatefulWidget {
  const AboutAnimal({super.key});

  @override
  State<AboutAnimal> createState() => _AboutAnimalState();
}

class _AboutAnimalState extends State<AboutAnimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Animal'),
          titleTextStyle: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Padding(padding: const EdgeInsets.only(top: 10)),
              Text(
                'Halaman About Animal',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ])));
  }
}
