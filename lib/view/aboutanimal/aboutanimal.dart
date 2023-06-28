import 'package:aloanimal/view/aboutanimal/informasi_1.dart';
import 'package:aloanimal/view/aboutanimal/informasi_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutAnimal extends StatefulWidget {
  const AboutAnimal({super.key});

  @override
  State<AboutAnimal> createState() => _AboutAnimalState();
}

class _AboutAnimalState extends State<AboutAnimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Animal'),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                'HEALTHY PETS,\n HEALTHY YOU',
                style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const Divider(
                color: Color.fromARGB(94, 158, 158, 158),
                thickness: 1,
                indent: 27,
                endIndent: 27,
              ),
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: const Color(0xFFFFF854),
                  height: 148,
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Important Things for Your Pet',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'How to treat your pets Better',
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      Column(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Informasi1()));
                            },
                            icon: const Icon(Icons.navigate_next_rounded),
                            iconSize: 45,
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: const Color(0xFFADE62A),
                  height: 148,
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Why and When to Vaccinate',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Alasan dan waktu yang tepat untuk vaksinasi',
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      Column(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Informasi2()));
                            },
                            icon: const Icon(Icons.navigate_next_rounded),
                            iconSize: 45,
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: const Color(0xFFFF72BE),
                  height: 148,
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vaccination Schedule',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Jadwal vaksinasi untuk Kucing dan Anjing',
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      Column(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next_rounded),
                            iconSize: 45,
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: const Color.fromARGB(242, 131, 131, 255),
                  height: 148,
                  width: 340,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Routine Care',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Perawatan rutin untuk Kucing dan Anjing',
                        style: GoogleFonts.lato(fontSize: 15),
                      ),
                      const SizedBox(height: 5),
                      Column(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.navigate_next_rounded),
                            iconSize: 45,
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
