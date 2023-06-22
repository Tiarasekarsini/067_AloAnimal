import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Text(
              'Hello, Pawrents!',
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            margin: const EdgeInsets.only(top: 20, left: 27, right: 27),
            decoration: BoxDecoration(
                // color: Color.fromARGB(188, 87, 92, 252),
                color: Color.fromARGB(242, 131, 131, 255),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: Offset(1, 1),
                      color: Colors.grey.withOpacity(0.3))
                ]),
            child: Image.asset('assets/images/homepage.png'),
          ),
          const SizedBox(height: 10),
          const Divider(
            color: Color.fromARGB(94, 158, 158, 158),
            thickness: 1,
            indent: 27,
            endIndent: 27,
          )
        ],
      )),
    );
  }
}
