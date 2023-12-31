import 'package:aloanimal/controller/diagnosis_controller.dart';
import 'package:aloanimal/model/diagnosis_model.dart';

import 'package:aloanimal/view/diagnosis/riwayat_diagnosis.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  ///variabel untuk menginisiasi kelas Diagnosis Controller
  var diagnosisController = DiagnosisController();
  String? namaPenyakit;
  String? tidakTerdiagnosis;

  List<bool> checkedList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

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

        ///widget supaya halaman dapat di scroll
        body: SingleChildScrollView(
            child: Container(
          margin:
              const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
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
          height: 900,
          width: 360,
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Pawrents!',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          'Check some of the symptoms experienced by your animal to find out the diagnosis of the disease ',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Color.fromARGB(158, 255, 64, 128),
                thickness: 1,
                indent: 27,
                endIndent: 27,
              ),

              ///menampilkan selectbox tentang gejala penyakit hewan
              CheckboxListTile(
                  title: Text('Demam'),
                  value: checkedList[0],

                  ///jika telah memasukkan data, maka sistem akan menampilkan outputnya
                  onChanged: (value) {
                    setState(() {
                      checkedList[0] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Diare Ringan'),
                value: checkedList[1],
                onChanged: (value) {
                  setState(() {
                    checkedList[1] = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text('Batuk'),
                  value: checkedList[2],
                  onChanged: (value) {
                    setState(() {
                      checkedList[2] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Mata Berair'),
                value: checkedList[3],
                onChanged: (value) {
                  setState(() {
                    checkedList[3] = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text('Hidung Berair'),
                  value: checkedList[4],
                  onChanged: (value) {
                    setState(() {
                      checkedList[4] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Diare Berdarah'),
                value: checkedList[5],
                onChanged: (value) {
                  setState(() {
                    checkedList[5] = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text('Muntah'),
                  value: checkedList[6],
                  onChanged: (value) {
                    setState(() {
                      checkedList[6] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Hilang Nafsu Makan'),
                value: checkedList[7],
                onChanged: (value) {
                  setState(() {
                    checkedList[7] = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text('Kekuningan'),
                  value: checkedList[8],
                  onChanged: (value) {
                    setState(() {
                      checkedList[8] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Nyeri Otot'),
                value: checkedList[9],
                onChanged: (value) {
                  setState(() {
                    checkedList[9] = value!;
                  });
                },
              ),
              CheckboxListTile(
                  title: Text('Bersin-bersin'),
                  value: checkedList[10],
                  onChanged: (value) {
                    setState(() {
                      checkedList[10] = value!;
                    });
                  }),
              CheckboxListTile(
                title: Text('Dehidrasi'),
                value: checkedList[11],
                onChanged: (value) {
                  setState(() {
                    checkedList[11] = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),

              ///membuat tombol untuk nantinya menampilkan hasil penyakit dari gejala yang sudah dipilih
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(230, 252, 87, 158)),
                onPressed: () {
                  ///menggunakan else if kondisional untuk menampilkan nama penyakit berdasarkan selection box yng dipilih
                  if (checkedList[5] && checkedList[6]) {
                    ///contoh output yang akan keluar
                    namaPenyakit = "CANINE PARVOVIRUS";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan. ",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[7] &&
                      checkedList[6] &&
                      checkedList[8]) {
                    namaPenyakit = "CANINE HEPATITIS";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan.",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[2]) {
                    namaPenyakit = "CANINE CORONAVIRUS";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan. ",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[0] &&
                      checkedList[8] &&
                      checkedList[9]) {
                    namaPenyakit = "CANINE LEPTOSPIROSIS";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan. ",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[10] &&
                      checkedList[3] &&
                      checkedList[4] &&
                      checkedList[7]) {
                    namaPenyakit = "FELINE UPPER RESPIRATORY TRACT INFECTION";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan. ",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[1] &&
                      checkedList[6] &&
                      checkedList[11]) {
                    namaPenyakit = "FELINE PANLEUKOPENIA";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc:
                            "Hewan Anda kemungkinan terjangkit virus\n $namaPenyakit Klik 'Lanjukan' untuk melihat feedback dari Dokter Hewan. ",
                        btnOkOnPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'Lanjutkan')
                      ..show(); // Add .show() to display the AwesomeDialog
                  } else {
                    tidakTerdiagnosis =
                        "Mohon maaf, kami tidak bisa memberikan diagnosis berdasarkan gejala yang anda pilih.";
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.WARNING,
                        animType: AnimType.TOPSLIDE,
                        showCloseIcon: true,
                        title: 'Result',
                        desc: "$tidakTerdiagnosis",
                        btnOkOnPress: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        btnOkColor: Colors.blue,
                        btnOkText: 'OK')
                      ..show();
                  }
                },
                child: Text(
                  'Cek',
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        )));
  }
}
