import 'package:aloanimal/view/home_page.dart';
import 'package:aloanimal/view/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Image.asset(
                      'assets/images/SignUp.png',
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 150),
                    child: Text("Sign Up",
                        style: GoogleFonts.lato(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    margin: const EdgeInsets.only(top: 190),
                    child: Text("Create a new account",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 260, left: 40, right: 40),
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
                            hintText: "Enter your name",
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color.fromARGB(230, 252, 87, 158),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your name";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      )),
                  Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 325, left: 40, right: 40),
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
                            hintText: "Enter your email",
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Color.fromARGB(230, 252, 87, 158),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your email";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      )),
                  Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 390, left: 40, right: 40),
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
                            hintText: "Enter your phone number",
                            prefixIcon: const Icon(
                              Icons.phone,
                              color: Color.fromARGB(230, 252, 87, 158),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your phone number";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      )),
                  Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 455, left: 40, right: 40),
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
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter your password",
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(230, 252, 87, 158),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      )),
                  Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(top: 520, left: 40, right: 40),
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
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Confirm your password",
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(230, 252, 87, 158),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 1.0))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter the same password";
                          }
                          return null;
                        },
                        onSaved: (value) {},
                      )),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 617, left: 40, right: 40),
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
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
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
                  Container(
                    margin: const EdgeInsets.only(top: 680),
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text.rich(TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: ' Sign In',
                                style: TextStyle(
                                    color: Color.fromARGB(230, 252, 87, 158),
                                    fontWeight: FontWeight.w900),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignIn()));
                                  })
                          ]))
                    ]),
                  )
                ]))));
  }
}
