import 'package:aloanimal/controller/animal_controller.dart';
import 'package:aloanimal/model/animal_model.dart';
import 'package:aloanimal/view/animaldata/animaldata.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAnimal extends StatefulWidget {
  const AddAnimal({super.key});

  @override
  State<AddAnimal> createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  var animalController = AnimalController();

  final formkey = GlobalKey<FormState>();

  String? namaK;
  String? tanggalLahir;
  String? jeniskelamin;
  String? age;
  String? ras;
  String? color;

  List<String> listItem = [
    '< 1 years old',
    '1 years old',
    '2 years old',
    '3 years old',
    '4 years old',
    '5 years old',
    '6 years old',
    '7 years old',
    '> 7 years old'
  ];

  List<String> jk = [
    'Male',
    'Female',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                alignment: Alignment.center,
                child: Text(
                  'Pawrents! \n Please Add your Animal Data',
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                  height: 50,
                  margin: const EdgeInsets.only(top: 100, left: 10, right: 10),
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
                    onChanged: (value) {
                      namaK = value;
                    },
                  )),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 170, left: 10, right: 10),
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
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0),
                    ),
                  ),
                  onChanged: (value) {
                    tanggalLahir = value;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 50,
                margin: const EdgeInsets.only(top: 240, left: 10, right: 10),
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
                  hint: const Text('Choose your animal gender'),
                  value: jeniskelamin,
                  onChanged: (value) {
                    setState(() {
                      jeniskelamin = value;
                    });
                  },
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: jk
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 50,
                margin: const EdgeInsets.only(top: 310, left: 10, right: 10),
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
                  hint: const Text('Choose your animal age'),
                  value: age,
                  onChanged: (value) {
                    setState(() {
                      age = value;
                    });
                  },
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: listItem
                      .map<DropdownMenuItem<String?>>((e) => DropdownMenuItem(
                            child: Text(e.toString()),
                            value: e,
                          ))
                      .toList(),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 380, left: 10, right: 10),
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
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0),
                    ),
                  ),
                  onChanged: (value) {
                    ras = value;
                  },
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 450, left: 10, right: 10),
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
                    hintText: "Enter the color",
                    prefixIcon: const Icon(
                      Icons.color_lens,
                      color: Color.fromARGB(230, 252, 87, 158),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.0),
                    ),
                  ),
                  onChanged: (value) {
                    color = value;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 520, left: 10, right: 10),
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
                      AnimalModel am = AnimalModel(
                        namaK: namaK!,
                        tanggalLahir: tanggalLahir!,
                        jeniskelamin: jeniskelamin!,
                        age: age!,
                        ras: ras!,
                        color: color!,
                      );
                      animalController.addAnimal(am);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'Pawrents! Your data has been successfully added!')));

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnimalData()),
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
                  padding: const EdgeInsets.only(top: 590, left: 10, right: 10),
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
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const AnimalData())));

                      var snackBar = const SnackBar(
                          content: Text('cancel to add animal data'));
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
            ],
          ),
        ),
      ),
    );
  }
}
