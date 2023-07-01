import 'package:aloanimal/controller/feedback1_controller.dart';
import 'package:aloanimal/model/feedback1_model.dart';
import 'package:aloanimal/view/adminPage/admin_page.dart';
import 'package:aloanimal/view/adminPage/feedback1/feedback1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditFeedback1 extends StatefulWidget {
  const EditFeedback1({super.key, this.id, this.feedbackAsal, this.namaPAsal});

  final String? id;
  final String? namaPAsal;
  final String? feedbackAsal;

  @override
  State<EditFeedback1> createState() => _EditFeedback1State();
}

class _EditFeedback1State extends State<EditFeedback1> {
  final f1c = FeedBack1Controller();
  var formkey = GlobalKey<FormState>();

  String? namaPBaru;
  String? feedbackBaru;

  List<String> np = [
    'CANINE PARVOVIRUS',
    'CANINE HEPATITIS',
    'CANINE CORONAVIRUS',
    'CANINE LEPTOSPIROSIS',
    'FELINE UPPER RESPIRATORY TRACT INFECTION',
    "FELINE PANLEUKOPENIA"
  ];
  @override
  void initState() {
    super.initState();
    namaPBaru = widget.namaPAsal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Feedback'),
          titleTextStyle: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AdminPage()));
            },
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formkey,
                child: Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Veterinarian! \n Please Check your Feedback Data',
                      style: GoogleFonts.lato(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 120, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 7,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ],
                    ),
                    child: DropdownButton(
                      hint: const Text('Choose a diagnosis disease'),
                      value: namaPBaru,
                      onChanged: (value) {
                        setState(() {
                          namaPBaru = value;
                        });
                      },
                      underline: const SizedBox(),
                      isExpanded: true,
                      items: np
                          .map<DropdownMenuItem<String?>>(
                              (e) => DropdownMenuItem(
                                    child: Text(e.toString()),
                                    value: e,
                                  ))
                          .toList(),
                    ),
                  ),
                  Container(
                    height: 250,
                    margin:
                        const EdgeInsets.only(top: 200, left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 7,
                              blurRadius: 10,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ]),
                    child: TextFormField(
                      maxLength: 4096,
                      maxLines: 10,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: "Enter your feedback here",
                          filled: true,
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0))),
                      onSaved: (value) {
                        feedbackBaru = value;
                      },
                      initialValue: widget.feedbackAsal,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter the name your animal!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 520, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(230, 252, 87, 158),
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        textStyle: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: 3.5 / 100,
                          height: 152 / 100,
                        ),
                      ),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          Feedback1Model f1m = Feedback1Model(
                            id: widget.id,
                            namaPenyakit: namaPBaru!.toString(),
                            feedback: feedbackBaru!.toString(),
                          );

                          f1c.editFeedback1(f1m);
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  'Your Animal Data Successfully Updated Changed')));

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Feedback1(),
                            ),
                          );
                        }
                        //print(cm);
                      },
                      child: Text(
                        'Save',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
