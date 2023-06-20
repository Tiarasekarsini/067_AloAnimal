import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Image.asset(
              'assets/images/top.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Image.asset(
              'assets/images/LogoLogin.png',
              height: 490,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 380),
            child: Text("Let's get Started",
                style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            padding: const EdgeInsets.only(left: 160, top: 450),
            child: Image.asset(
              'assets/images/bottom.png',
              height: 700,
            ),
          ),
        ],
      ),
    );
  }
}
