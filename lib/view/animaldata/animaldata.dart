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
  var ac = AnimalController();

  @override
  void initState() {
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
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.delete_outline_rounded)),
                                IconButton(
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddAnimal()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
