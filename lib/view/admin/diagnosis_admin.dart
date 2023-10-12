import 'package:aloanimal/controller/diagnosis_controller.dart';
import 'package:aloanimal/view/admin/admin_page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiagnosisAdmin extends StatefulWidget {
  const DiagnosisAdmin({super.key});

  @override
  State<DiagnosisAdmin> createState() => _DiagnosisAdminState();
}

class _DiagnosisAdminState extends State<DiagnosisAdmin> {
  ///membuat sebuah variable dari inisialiasi DiagnosisController
  ///untuk dapat menggunakan/mengakses metode dikelas DiagnosisController
  var dc = DiagnosisController();

  @override
  void initState() {
    ///memanggil metode yang ada pada kelas DiagnosisController
    ///untuk memanggil/menampilkan data
    dc.getContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///membuat judul/tulisan pada halaman yang sedang aktif
      appBar: AppBar(
        title: const Text('Diagnostics Data'),
        titleTextStyle: GoogleFonts.lato(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => AdminPage()));
          },
        ),
      ),

      ///safe area digunakan agar posisi konten tetap dan tidak berubah
      body: SafeArea(
          child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello, Veterinarian!, \nThis is Diagnostic Data Animal',
                style: GoogleFonts.lato(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Divider(
          color: Color.fromARGB(158, 255, 64, 128),
          thickness: 1,
          indent: 27,
          endIndent: 27,
        ),
        const SizedBox(
          height: 10,
        ),

        ///widget yang memungkinkan dapat terisi sesuai dengan ruang yang tersedia
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
                          ///mengambil dan memunculkan data dari kelas DiagnosisController bagian Nama Penyakit
                          title: Text(
                            data[index]['namaPenyakit'],
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
          ),
        ),
      ])),
    );
  }
}
