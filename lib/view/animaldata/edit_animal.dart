import 'package:aloanimal/controller/animal_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
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
                      )),
                ]))));
  }
}
