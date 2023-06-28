import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi2 extends StatelessWidget {
  const Informasi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Why and When'),
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              'Why and When to Vaccinate',
              style:
                  GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Image.asset('assets/images/informasi2.png'),
            Container(
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
              width: 340,
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
                            text: 'CANINE DISTEMPER',
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
                                'Perlindungan terdapat pada Vaksin VP 5/L, VP 5/CV-L dan VP 5L4CV. Virus ini sangat mudah menular dan fatal. Umumnya anjing yang bertahan memiliki kerusakan syaraf.',
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
                            text: 'CANINE HEPATITIS',
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
                                'Perlindungan terdapat pada Vaksin VP 5/L, VP 5/CV-L dan VP 5L4CV. Virus ini mudah menular, terutama pada anjing yang masih muda dan menyerang hati.',
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
                            text: 'CANINE CORONAVIRUS',
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
                                'Perlindungan terdapat pada Vaksin VP 5/CV-L dan VP 5L4CV. Virus ini mudah menular, menyebabkan diare ringan. Namun bila terjadi dual infeksi dengan Parvovirus, berakibat diare berdarah hingga kematian.',
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
                            text: 'CANINE LEPTOSPIROSIS',
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
                                'Perlindungan terdapat pada Vaksin VP 5/L, VP 55/CV-L dan VP 5L4CV. Penyakit ini menyerang fungsi hati dan ginjal. 50% kasus fatal dan menular ke manusia.',
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
                            text: 'KENNEL COUGH',
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
                                'perlindungan terdapat pada Vaksin Bronchicine CAe. Penyakit ini disebabkan Bordotella bronchiseptica, menyebabkan infeksi traheobronchitis.',
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
                            text: 'FELINE UPPER RESPIRATORY TRACT INFECTION',
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
                                'Perlindungan terdapat pada Felocell 3 dan 4. Virus ini mudah menular dan menyebabkan saluran pernafasan atas. Pada kasus berat, menimbulkan kematian.',
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
                            text: 'FELINE PANLEUKOPENIA',
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
                                'Perlindungan terdapat pada Felocell 3 dan 4. Virus ini mudah menular. Sering terjadi pada anakan, namun juga dapat terjadi pada berbagai umur.',
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ))));
  }
}
