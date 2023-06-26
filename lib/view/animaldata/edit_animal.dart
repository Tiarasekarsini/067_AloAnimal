import 'package:aloanimal/controller/animal_controller.dart';
import 'package:aloanimal/view/animaldata/animaldata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/animal_model.dart';

class EditAnimal extends StatefulWidget {
  const EditAnimal(
      {super.key,
      this.kucingAsal,
      this.id,
      this.tanggalAsal,
      this.jkAsal,
      this.ageAsal,
      this.rasAsal,
      this.colorAsal});
  final String? id;
  final String? kucingAsal;
  final String? tanggalAsal;
  final String? jkAsal;
  final String? ageAsal;
  final String? rasAsal;
  final String? colorAsal;

  @override
  State<EditAnimal> createState() => _EditAnimalState();
}

class _EditAnimalState extends State<EditAnimal> {
  final animalController = AnimalController();

  String? kucingBaru;
  String? tanggalBaru;
  String? jkBaru;
  String? ageBaru;
  String? rasBaru;
  String? colorBaru;

  @override
  var formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Animal Data'),
          titleTextStyle: GoogleFonts.lato(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
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
                      'Pawrents! \n Please Check your Animal Data',
                      style: GoogleFonts.lato(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 100, left: 10, right: 10),
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
                      decoration: InputDecoration(
                          hintText: "Enter your animal name",
                          prefixIcon: const Icon(
                            Icons.pets,
                            color: Color.fromARGB(230, 252, 87, 158),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 1.0))),
                      onSaved: (value) {
                        kucingBaru = value;
                      },
                      initialValue: widget.kucingAsal,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter the name your animal!';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 170, left: 10, right: 10),
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
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the animal's birth date",
                          prefixIcon: const Icon(
                            Icons.calendar_today,
                            color: Color.fromARGB(230, 252, 87, 158),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                        ),
                        onSaved: (value) {
                          tanggalBaru = value;
                        },
                        initialValue: widget.tanggalAsal,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the birth date your animal!';
                          }
                          return null;
                        }),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 240, left: 10, right: 10),
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
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the gender",
                          prefixIcon: const Icon(
                            Icons.favorite,
                            color: Color.fromARGB(230, 252, 87, 158),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                        ),
                        onSaved: (value) {
                          jkBaru = value;
                        },
                        initialValue: widget.jkAsal,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the gender your animal!';
                          }
                          return null;
                        }),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 310, left: 10, right: 10),
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
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the age",
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                        ),
                        onSaved: (value) {
                          ageBaru = value;
                        },
                        initialValue: widget.ageAsal,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the age your animal!';
                          }
                          return null;
                        }),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 380, left: 10, right: 10),
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
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the ras",
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                        ),
                        onSaved: (value) {
                          rasBaru = value;
                        },
                        initialValue: widget.rasAsal,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the ras your animal!';
                          }
                          return null;
                        }),
                  ),
                  Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 450, left: 10, right: 10),
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
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter the color your animal",
                          prefixIcon: const Icon(
                            Icons.color_lens,
                            color: Color.fromARGB(230, 252, 87, 158),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Colors.white, width: 1.0),
                          ),
                        ),
                        onSaved: (value) {
                          colorBaru = value;
                        },
                        initialValue: widget.colorAsal,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'please enter the color your animal!';
                          }
                          return null;
                        }),
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
                          AnimalModel am = AnimalModel(
                              id: widget.id,
                              namaK: kucingBaru!.toString(),
                              tanggalLahir: tanggalBaru!.toString(),
                              jeniskelamin: jkBaru!.toString(),
                              age: ageBaru!.toString(),
                              ras: rasBaru!.toString(),
                              color: colorBaru!.toString());

                          animalController.editAnimal(am);
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                                  'Your Animal Data Successfully Updated Changed')));

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnimalData(),
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
                  Container(
                      padding:
                          const EdgeInsets.only(top: 590, left: 10, right: 10),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const AnimalData())));

                          var snackBar = const SnackBar(
                              content: Text('cancel to make changes'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Text(
                          'Cancel',
                          style: GoogleFonts.lato(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ]))));
  }
}
