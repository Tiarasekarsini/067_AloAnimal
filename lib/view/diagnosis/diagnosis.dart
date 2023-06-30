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
  var diagnosisController = DiagnosisController();
  String? namaPenyakit;
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
              CheckboxListTile(
                  title: Text('Demam'),
                  value: checkedList[0],
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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(230, 252, 87, 158)),
                onPressed: () {
                  if (checkedList[5] && checkedList[6]) {
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
                  } else if (checkedList[7] &&
                      checkedList[3] &&
                      checkedList[4]) {
                    namaPenyakit = "CANINE DISTEMPER";

                    DiagnosisModel dm =
                        DiagnosisModel(namaPenyakit: namaPenyakit!);
                    diagnosisController.addDiagnosis(dm);
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.WARNING,
                      animType: AnimType.TOPSLIDE,
                      showCloseIcon: true,
                      title: 'Result',
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
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
                      desc: "Kucing anda terkena penyakit\n $namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RiwayatDiagnosis()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show(); // Add .show() to display the AwesomeDialog
                  } else {
                    namaPenyakit =
                        "Mohon maaf, kami tidak bisa memberikan diagnosis berdasarkan gejala yang anda pilih.";
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.WARNING,
                      animType: AnimType.TOPSLIDE,
                      showCloseIcon: true,
                      title: 'Result',
                      desc: "$namaPenyakit",
                      btnOkOnPress: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      btnOkColor: Colors.blue,
                    )..show();
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
