import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi1 extends StatelessWidget {
  const Informasi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///membuat judul/tulisan pada halaman yang sedang aktif
        appBar: AppBar(
          title: const Text('Important Things'),
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 247, 0),
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
              'Important Things for Your Pets',
              style:
                  GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            ///menambahkan gambar
            Image.asset('assets/images/informasi1.png'),
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
              height: 430,
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
                                'Hewan dengan pemiliknya selain memiliki ikatan erat, disertai tanggung jawab yang besar bagi pemilik terhadap hewan peliharaannya. Berikanlah kasih sayang dan perhatian yang penuh bagi hewan dengan melakukan: ',
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
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '1. Pemeriksaan kesehatan secara rutin ke\n     dokter hewan untuk mengetahui kondisi\n     kesehatannya.',
                          ),
                        ],
                      ),
                    ),
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
                            text:
                                '2. Gromming - Terutama bagi hewan \n    berbulu panjang. Anda dapat menyisirkan \n   bulu-bulunya, memandikan dengan \n  shampoo khusus hewan dan pemberian\n   antiparasit secara rutin.',
                          ),
                        ],
                      ),
                    ),
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
                            text:
                                '3.Sosialisasi - Perkenalkanlah hewan anda\n  dengan lingkungan sekitarnya, baik hewan\n  lain maupun manusia.',
                          ),
                        ],
                      ),
                    ),
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
                            text:
                                '4. Disiplin - Ajarkan hewan anda apa yang\n     boleh mereka lakukan dan apa yang\n     dilarang bagi mereka.',
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
