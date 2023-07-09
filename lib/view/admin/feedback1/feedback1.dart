import 'package:aloanimal/controller/feedback1_controller.dart';
import 'package:aloanimal/view/admin/admin_page.dart';
import 'package:aloanimal/view/admin/feedback1/add_feedback1.dart';
import 'package:aloanimal/view/admin/feedback1/edit_feedback1.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Feedback1 extends StatefulWidget {
  const Feedback1({super.key});

  @override
  State<Feedback1> createState() => _Feedback1State();
}

class _Feedback1State extends State<Feedback1> {
  var f1c = FeedBack1Controller();

  @override
  void initState() {
    f1c.getFeedback1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veterinarian Feedback'),
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
      body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        Text(
          'Veterinarian!\n this is your Feedback Data',
          style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const Divider(
          color: Color.fromARGB(94, 158, 158, 158),
          thickness: 1,
          indent: 27,
          endIndent: 27,
        ),
        //menampung data dari controller
        Expanded(
          child: StreamBuilder<List<DocumentSnapshot>>(
            stream: f1c.stream,
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
                        child: ListTile(
                            title: Text(
                              data[index]['namaPenyakit'],
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            subtitle: Text(data[index]['feedback']),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EditFeedback1(
                                                  id: data[index]['id'],
                                                  namaPAsal: data[index]
                                                      ['namaPenyakit'],
                                                  feedbackAsal: data[index]
                                                      ['feedback'],
                                                )));
                                  },
                                  icon: const Icon(Icons.navigate_next_rounded),
                                ),
                              ],
                            )));
                  });
            },
          ),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(230, 252, 87, 158),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddFeedback1()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
