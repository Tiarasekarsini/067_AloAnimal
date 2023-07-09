import 'package:aloanimal/controller/rolebase_controller.dart';
import 'package:aloanimal/model/user_model.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:aloanimal/view/sign_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  final rolebaseConntroller = RoleBaseController();

  @override
  Widget build(BuildContext context) {
    String? namaPawrent;
    String? email;
    String? phone;
    String? password;

    final _passwordController = TextEditingController();

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
                        onChanged: (value) {
                          namaPawrent = value;
                        },
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
                        onChanged: (value) {
                          email = value;
                        },
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
                        controller: _passwordController,
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
                          } else if (value.length < 6) {
                            return "Password must be at least 6 characters long";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                        },
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
                          } else if (value != _passwordController.text) {
                            return "Password must be the same";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          password = value;
                        },
                      )),
                  Container(
                      padding:
                          const EdgeInsets.only(top: 540, left: 40, right: 40),
                      child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              UserModel? registerUser =
                                  await rolebaseConntroller
                                      .registerWithEmailAndPassword(
                                email!,
                                namaPawrent!,
                                password!,
                              );
                              if (registerUser != null) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        'Pawrents! your Registration Successfully',
                                        style: GoogleFonts.lato(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Colors.blue),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return SignIn();
                                            }));
                                          },
                                          child: Text(
                                            'Sign In',
                                            style: GoogleFonts.lato(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                            'Ups! your registration is failed'),
                                        content: Text(
                                            'Please check your data again'),
                                        actions: <Widget>[
                                          TextButton(
                                            style: TextButton.styleFrom(
                                                backgroundColor: Colors.blue),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Try Again',
                                              style: GoogleFonts.lato(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              }
                            }
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(230, 252, 87, 158),
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              textStyle: GoogleFonts.lato(
                                fontSize: 18,
                                color: Colors.white,
                                letterSpacing: 3.5 / 100,
                                height: 152 / 100,
                              )))),
                  Container(
                    margin: const EdgeInsets.only(top: 610),
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
