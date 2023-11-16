import 'package:aloanimal/view/sign_in.dart';
import 'package:aloanimal/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  ///UI untuk halaman pertama ketika aplikasi dibuka
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: Image.asset(
              'assets/images/aloanimal.png',
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 240, left: 20, right: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: "Helping you\nto get to know",
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                        letterSpacing: 3.5 / 100,
                        height: 152 / 100),
                    children: const [
                      TextSpan(
                          text: " your pet better",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ]),
              )),
          Container(
            ///elevated button untuk SignIn
            padding: const EdgeInsets.only(top: 590, left: 40, right: 40),
            child: ElevatedButton(
              key: const Key('signInButton'), // Add this line
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(230, 252, 87, 158),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
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
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              child: Text(
                'Sign In',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 660, left: 40, right: 40),

            ///elevatd Button untuk SignUp
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
                    height: 152 / 100),
              ),

              ///proses apabila user menekan tombol signUp, maka dialihkan ke halaman tsb
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
