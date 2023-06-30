import 'package:aloanimal/controller/diagnosis_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  var dc = DiagnosisController();
  String? namaPenyakit;

  @override
  void initState() {
    dc.getContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello, Veterinarian!',
                style: GoogleFonts.lato(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  // rbc.signOut();
                },
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
                              // if (namaPenyakit == 'CANINE PARVOVIRUS') {}
                            },
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
