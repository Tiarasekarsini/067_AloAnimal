import 'package:aloanimal/controller/feedback1_controller.dart';
import 'package:aloanimal/model/feedback1_model.dart';
import 'package:aloanimal/view/admin/admin_page.dart';
import 'package:aloanimal/view/admin/feedback1/feedback1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFeedback1 extends StatefulWidget {
  const AddFeedback1({super.key});

  @override
  State<AddFeedback1> createState() => _AddFeedback1State();
}

class _AddFeedback1State extends State<AddFeedback1> {
  var f1c = FeedBack1Controller();

  final formkey = GlobalKey<FormState>();
  String? namaPenyakit;
  String? feedback1;

  List<String> np = [
    'CANINE PARVOVIRUS',
    'CANINE HEPATITIS',
    'CANINE CORONAVIRUS',
    'CANINE LEPTOSPIROSIS',
    'FELINE UPPER RESPIRATORY TRACT INFECTION',
    "FELINE PANLEUKOPENIA"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formkey,
                child: Stack(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    alignment: Alignment.center,
                    child: Text(
                      'Veterinarian! \n Please Add your Feedback',
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
                      value: namaPenyakit,
                      onChanged: (value) {
                        setState(() {
                          namaPenyakit = value;
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
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your feedback";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          feedback1 = value;
                        },
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 520, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
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
                          Feedback1Model f1m = Feedback1Model(
                              feedback: feedback1!,
                              namaPenyakit: namaPenyakit!);
                          f1c.addFeedback1(f1m);
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  'Pawrents! Your data has been successfully added!')));

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Feedback1()),
                          );
                        }
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
                  Container(
                    padding:
                        const EdgeInsets.only(top: 580, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
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
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Feedback1()));
                      },
                      //print(cm);

                      child: Text(
                        'Cancel',
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
