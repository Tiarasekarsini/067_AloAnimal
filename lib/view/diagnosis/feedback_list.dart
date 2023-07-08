import 'package:aloanimal/controller/feedback1_controller.dart';
import 'package:aloanimal/view/home_page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedbackList extends StatefulWidget {
  const FeedbackList({super.key});

  @override
  State<FeedbackList> createState() => _FeedbackListState();
}

class _FeedbackListState extends State<FeedbackList> {
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
        leading: IconButton(
          icon: Icon(Icons.close),
          color: Colors.red,
          iconSize: 40,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.only(top: 5),
          ),
          Text(
            'Pawrents!\n this is your Feedback Data',
            style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Divider(
            color: Color.fromARGB(94, 158, 158, 158),
            thickness: 1,
            indent: 27,
            endIndent: 27,
          ),
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
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
