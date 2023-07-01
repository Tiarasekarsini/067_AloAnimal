import 'package:aloanimal/controller/diagnosis_controller.dart';
import 'package:aloanimal/controller/feedback1_controller.dart';
import 'package:aloanimal/model/feedback1_model.dart';

import 'package:aloanimal/view/diagnosis/feedback_list.dart';

import 'package:aloanimal/view/home_page.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatDiagnosis extends StatefulWidget {
  const RiwayatDiagnosis({Key? key}) : super(key: key);

  @override
  State<RiwayatDiagnosis> createState() => _RiwayatDiagnosisState();
}

class _RiwayatDiagnosisState extends State<RiwayatDiagnosis> {
  var dc = DiagnosisController();
  var f1c = FeedBack1Controller();

  @override
  void initState() {
    dc.getContact();
    f1c.getFeedback1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diagnostic History'),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 5,
              ),
            ),
            Text(
              'Pawrents!\n this is your Animal Diagnostic History',
              style:
                  GoogleFonts.lato(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Divider(
              color: Color.fromARGB(158, 255, 64, 128),
              thickness: 1,
              indent: 27,
              endIndent: 27,
            ),

            // Menampung data dari controller
            Expanded(
              child: StreamBuilder<List<DocumentSnapshot>>(
                stream: dc.stream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  final List<DocumentSnapshot> data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        elevation: 10,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          height: 70,
                          child: ListTile(
                            title: Text(
                              data[index]['namaPenyakit'],
                              style: GoogleFonts.lato(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.navigate_next_rounded),
                              onPressed: () {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.WARNING,
                                  animType: AnimType.TOPSLIDE,
                                  showCloseIcon: true,
                                  title: 'Result',
                                  desc:
                                      "Anda ingin melihat feedback dari Dokter hewan? klik 'lihat' untuk melihat feedback",
                                  btnOkOnPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FeedbackList(),
                                      ),
                                    );
                                  },
                                  btnOkColor: Colors.blue,
                                  btnOkText: 'Lanjutkan',
                                )..show();
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
