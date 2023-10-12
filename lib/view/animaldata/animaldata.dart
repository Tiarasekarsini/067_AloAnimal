import 'package:aloanimal/controller/animal_controller.dart';
import 'package:aloanimal/view/animaldata/add_animal.dart';
import 'package:aloanimal/view/animaldata/edit_animal.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimalData extends StatefulWidget {
  const AnimalData({super.key});

  @override
  State<AnimalData> createState() => _AnimalDataState();
}

class _AnimalDataState extends State<AnimalData> {
  ///menginisiasi kelas AnimalController
  var ac = AnimalController();

  @override
  void initState() {
    ///menginisiasi untuk data menggunakan metode yang ada di animalcontroller
    ac.getContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Data'),
        titleTextStyle: GoogleFonts.lato(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
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
          'Pawrents!\n this is your Animal Data',
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
            stream: ac.stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              ///menampilkan data yang tersimpan di firestore
              final List<DocumentSnapshot> data = snapshot.data!;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                        margin:
                            const EdgeInsets.only(right: 20, left: 20, top: 20),
                        elevation: 10,
                        child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: Text(
                                data[index]['namaK']
                                    .substring(0, 1)
                                    .toUpperCase(),
                                style: GoogleFonts.lato(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            title: Text(data[index]['namaK']),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(

                                    ///proses apabila pengguna menean ikon delete
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                                content: Text(
                                                  'Pawrents!\nare you sure you want to delete this animal data?',
                                                  style: GoogleFonts.lato(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                actions: [
                                                  TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.red),
                                                      onPressed: () async {
                                                        Navigator.pop(context);
                                                        ac
                                                            .delAnimal(
                                                                data[index].id)
                                                            .then((value) {
                                                          setState(() {
                                                            ac.getContact();
                                                          });
                                                        });
                                                        var snackBar =
                                                            const SnackBar(
                                                                content: Text(
                                                                    'Successfully Deleted'));
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                snackBar);
                                                      },
                                                      child: Text(
                                                        'Delete',
                                                        style: GoogleFonts.lato(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                  TextButton(
                                                      style:
                                                          TextButton.styleFrom(
                                                              backgroundColor:
                                                                  Colors.blue),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text(
                                                        'Cancel',
                                                        style: GoogleFonts.lato(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ]);
                                          });
                                    },
                                    icon: const Icon(
                                        Icons.delete_outline_rounded)),
                                IconButton(
                                  ///proses ketika pengguna menekan tombol edit
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => EditAnimal(
                                                  id: data[index]['id'],
                                                  kucingAsal: data[index]
                                                      ['namaK'],
                                                  tanggalAsal: data[index]
                                                      ['tanggalLahir'],
                                                  jkAsal: data[index]
                                                      ['jeniskelamin'],
                                                  ageAsal: data[index]['age'],
                                                  rasAsal: data[index]['ras'],
                                                  colorAsal: data[index]
                                                      ['color'],
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

      ///FAC untuk menambahkan data animal
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(230, 252, 87, 158),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddAnimal()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
