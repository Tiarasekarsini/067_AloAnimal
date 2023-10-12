import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi3 extends StatelessWidget {
  const Informasi3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///membuat judul/tulisan pada halaman yang sedang aktif
        appBar: AppBar(
          title: const Text('Vaccination Schedule'),
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 65, 125),
          ),
        ),

        ///fungsi agar halaman yang aktif bisa di scroll oleh pengguna
        body: SingleChildScrollView(
          ///safe area digunakan agar posisi konten tetap dan tidak berubah
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Vaccination Schedule',
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                ///kontainer digunakan untuk membungkus semua konten
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
                  padding: const EdgeInsets.only(top: 20),
                  height: 850,
                  width: 340,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/cat.png',
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(width: 20),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '8, 12 dan 16 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Felocell 3/Felocell 4',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '16 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Defensor 3',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Annual: ',
                                      ),
                                    ],
                                  ),
                                ),
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
                                            'Felocell 3/Felocell 4\n       + Defensor 3',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/dog.png',
                            width: 160,
                            height: 150,
                          ),
                          const SizedBox(width: 20),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '6 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
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
                                            'Vanguard Plus\n 5/L/Vanguard Plus\n 5/CV-L*',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '8 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Bronchicine CAe',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '9 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
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
                                            'Vanguard Plus\n 5/L/Vanguard Plus\n 5/CV-L/VP 5L4CV',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '12 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
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
                                            'Vanguard Plus\n 5/L/Vanguard Plus\n 5/CV-L/VP 5L4CV\n + Bronchicine CAe',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '16 minggu: ',
                                      ),
                                    ],
                                  ),
                                ),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Defensor 3**',
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Annual: ',
                                      ),
                                    ],
                                  ),
                                ),
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
                                            'Vanguard Plus\n 5/L/Vanguard Plus\n 5/CV-L/VP 5L4CV\n+ Defensor 3 + \nBronchicine CAe',
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Container(
                        margin: const EdgeInsets.only(right: 20, left: 20),
                        child: Row(
                          children: [
                            Text(
                              '*Vaksinasi disesuaikan dengan gaya hidup\nhewan \n**Vaksinasi Defensor 3 aman digunakan\n sejak umur 12 minggu',
                              style: GoogleFonts.lato(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pinkAccent),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
