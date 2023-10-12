import 'package:aloanimal/controller/animal_controller.dart';
import 'package:aloanimal/model/animal_model.dart';
import 'package:aloanimal/view/animaldata/animaldata.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AddAnimal extends StatefulWidget {
  const AddAnimal({super.key});

  @override
  State<AddAnimal> createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  ///membuat variable yang menginisiasi kelas AnimalController
  var animalController = AnimalController();

  ///menginisiassi TEC untuk date
  TextEditingController date = TextEditingController();

  final formkey = GlobalKey<FormState>();

  String? namaK;
  String? tanggalLahir;
  String? jeniskelamin;
  String? age;
  String? ras;
  String? color;

  ///menentukan list/isian dropdown umur animal
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

  ///menentukan list/isian dropdown jenis kelamin
  List<String> jk = [
    'Male',
    'Female',
  ];

  @override
  void initState() {
    date.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///fungsi agar halaman yang aktif bisa di scroll oleh pengguna
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

                  ///membuat field untuk inputan nama animal
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

                    ///menyimpan isian nama yang diinput pengguna
                    onChanged: (value) {
                      namaK = value;
                    },

                    ///memeriksa apakah isian valid atau tidak
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your animal name";
                      }
                      return null;
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

                ///membuat field untuk date
                child: TextFormField(
                  controller: date,
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
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2008),
                        lastDate: DateTime(2050));
                    if (pickedDate != null) {
                      String datepicked =
                          DateFormat('dd-MMMM-yyyy').format(pickedDate);

                      setState(() {
                        date.text = datepicked;
                        tanggalLahir = datepicked;
                      });
                    }
                  },

                  ///menyimpan inputan
                  onChanged: (value) {
                    tanggalLahir = value;
                  },

                  ///memvalidasi apabila isian dikosongkan pengguna
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your animal birth date";
                    }
                    return null;
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

                ///menampilkan dropdown untuk isian gender animal
                child: DropdownButton(
                  hint: const Text('Choose your animal gender'),
                  value: jeniskelamin,

                  ///menyimpan inputan pengguna
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

                ///menampilkan dropdown animal age
                child: DropdownButton(
                  hint: const Text('Choose your animal age'),
                  value: age,

                  ///menyimpan isian dari pengguna
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

                  ///menyimpan inputan dari pengguna
                  onChanged: (value) {
                    ras = value;
                  },

                  ///menampilkan pesan/memvalidasi apabila field dikosongkan pengguna
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your animal ras";
                    }
                    return null;
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

                ///membuat field untuk warna animal
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

                  ///menyimpan isian dari pengguna
                  onChanged: (value) {
                    color = value;
                  },

                  ///memeriksan dan menampilkan pesan jika pengguna mengosongkan field
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your animal color";
                    }
                    return null;
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

                  ///proses ketika pengguna menekan tombol save
                  onPressed: () {
                    ///memeriksa inputan dari pengguna
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

                      ///menampilkan pesan apabila isian sudah sesuai
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'Pawrents! Your data has been successfully added!')));

                      ///mengalihkan ke halaman AnimalData
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

                    ///mengalihkan langsung ke halaman AnimalData
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
