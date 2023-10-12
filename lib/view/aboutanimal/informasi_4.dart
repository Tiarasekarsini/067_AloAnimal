import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi4 extends StatelessWidget {
  const Informasi4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        ///membuat judul/tulisan pada halaman yang sedang aktif
        appBar: AppBar(
          title: const Text('Routine Care'),

          ///mengubah style font
          titleTextStyle: GoogleFonts.lato(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(242, 131, 131, 255),
          ),
        ),

        ///fungsi agar halaman yang aktif bisa di scroll oleh pengguna
        body: SingleChildScrollView(

            ///safe area digunakan agar posisi konten tetap dan tidak berubah
            child: SafeArea(
                child: Column(children: [
          const SizedBox(height: 10),
          Text(
            'Routine Care',
            style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
          ),

          ///menambahkan gambar
          Image.asset('assets/images/informasi4.png'),
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
              height: 1000,
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
                                'Vaksinasi diperlukan untuk memberikan kekebalan terhadap penyakit urgensi. Selain itu, pemilik juga harus memperhatikan beberapa hal yaitu exercise, tempat tinggal, nutrisi dan pengendalian parasit. Konsultasikan ke dokter hewan untuk mendapatkan informasi mengenai perawatan kesehatannya.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
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
                              text: 'ANAKAN < 6 BULAN',
                              style: GoogleFonts.lato(
                                  color:
                                      const Color.fromARGB(255, 255, 52, 120),
                                  fontWeight: FontWeight.bold)),
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
                                'Lakukan pemeriksaan kesehatan sedini mungkin. Periksakan mengenai adanya kemungkinan penyakit, parasit dan kelainan fisik. Konsultasikan program vaksinasi yang tepat bagi hewan anda, diet, tingkah laku, pelatihan dan perlu tidaknya spay/neutered.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
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
                              text: 'MASA PERTUMBUHAN 6 BULAN - 2 TAHUN',
                              style: GoogleFonts.lato(
                                  color:
                                      const Color.fromARGB(255, 255, 52, 120),
                                  fontWeight: FontWeight.bold)),
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
                                'Pada masa ini hewan sedang dalam keadaan sehat dan aktif. Namun vaksinasi dan pemeriksaan kesehatan tahunan perlu dilakukan. Pada masa ini, kebutuhan nutrisi berubah, terutama apabila hewan telah di-desexing.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
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
                              text: 'DEWASA 2 - 7 TAHUN',
                              style: GoogleFonts.lato(
                                  color:
                                      const Color.fromARGB(255, 255, 52, 120),
                                  fontWeight: FontWeight.bold)),
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
                                'Pemeriksaan rutin tahunan perlu dilakukan untuk mengetahui kesehatan, nutrisi, bobot badan dan vaksinasi.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
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
                              text: 'SENIOR > 7 TAHUN',
                              style: GoogleFonts.lato(
                                  color:
                                      const Color.fromARGB(255, 255, 52, 120),
                                  fontWeight: FontWeight.bold)),
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
                                'Seperti pada manusia, hewan tua memerlukan pemeriksaan kesehatan lebih sering. Hewan mengalami penuaan lebih cepat dibanding manusia, sehingga meningmbulkan beberapa masalah seperti pada jantung, ginjal, hormon, arthritis dan kandung kemih. Jika hewan terdiagnosa, segera lakukan perawatan untuk mencegah masalah lebih berat. Vaksinasi rutin, pengendalian parasit dan nutrisi yang tepat merupakan kebutuhan yang penting pada masa ini.',
                          ),
                        ],
                      ),
                    ),
                  ]))
        ]))));
  }
}
