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
          title: const Text('Disease Diagnosis'),
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Container(
                  margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(15),
                  height: 1300,
                  width: 360,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Vaksinasi melindungi hewan dari berbagai penyakit penting yang dapat menular atau fatal. Bahkan untuk hewan yang terawat sekalipun, resiko itu dapat baik secara langsung melalui hewan lain atau secara tidak langsung dari lingkungannya.',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Anakan lebih rentan terhadap penyakit. Vaksinasi dapat diberikan sejak umur 6 minggu untuk kemudian dibooster sesuai rekomendasi dokter hewan.',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text: 'CANINE PARVOVIRUS',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            style: GoogleFonts.lato(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    'Perlingdungan terdapat pada Vaksin VP 5/L, VP 5/CV-L dan VP 5L4CV. Virus ini mudah menular dan terkadang fatal.',
                              ),
                            ],
                          ),
                        ),
                      ]))
            ]))));
  }
}
