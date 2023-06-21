import 'package:aloanimal/view/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: Stack(
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
                height: 400,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              margin: const EdgeInsets.only(top: 440, left: 17, right: 17),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Email',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(230, 252, 87, 158),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 8),
                margin: const EdgeInsets.only(top: 450, right: 40, left: 40),
                child: Column(children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter your email",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromARGB(230, 252, 87, 158),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your name";
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ])),
            Container(
              padding: const EdgeInsets.only(left: 25),
              margin: const EdgeInsets.only(top: 520, left: 17, right: 17),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(230, 252, 87, 158),
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 8),
                margin: const EdgeInsets.only(top: 530, right: 40, left: 40),
                child: Column(children: [
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter your password",
                        prefixIcon: Icon(Icons.lock,
                            color: Color.fromARGB(230, 252, 87, 158)),
                        suffixIcon: Icon(Icons.visibility)),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ])),
            Container(
              padding: const EdgeInsets.only(top: 610, left: 40, right: 40),
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
                onPressed: () {},
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
              margin: const EdgeInsets.only(top: 680),
              alignment: Alignment.center,
              child: Column(children: [
                Text.rich(TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(230, 252, 87, 158),
                              fontWeight: FontWeight.w900),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            })
                    ]))
              ]),
            )
          ],
        ),
      )),
    );
  }
}
