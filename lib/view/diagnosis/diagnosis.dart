import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Diagnosis extends StatefulWidget {
  const Diagnosis({super.key});

  @override
  State<Diagnosis> createState() => _DiagnosisState();
}

class _DiagnosisState extends State<Diagnosis> {
  String? namaPenyakit;
  List<bool> checkedList = [false, false, false];
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
      body: ListView(children: [
        Column(children: [
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
              children: [
                CheckboxListTile(
                    title: Text('Demam'),
                    value: checkedList[0],
                    onChanged: (value) {
                      setState(() {
                        checkedList[0] = value!;
                      });
                    }),
                CheckboxListTile(
                  title: Text('Diare'),
                  value: checkedList[1],
                  onChanged: (value) {
                    setState(() {
                      checkedList[1] = value!;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (checkedList[0] && checkedList[1]) {
                        namaPenyakit = "Demam";
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Ini adalah hasil diagnosis:'),
                                content: Text('Nama Penyakit: $namaPenyakit'),
                                actions: <Widget>[
                                  TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.blue),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Save',
                                      style: GoogleFonts.lato(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              );
                            });
                      }
                    },
                    child: Text('Submit'))
              ],
            ),
          )
        ])
      ]),
    );
  }
}
