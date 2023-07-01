import 'package:aloanimal/controller/rolebase_controller.dart';
import 'package:aloanimal/model/user_model.dart';
import 'package:aloanimal/view/adminPage/admin_page.dart';
import 'package:aloanimal/view/adminPage/diagnosis_admin.dart';
import 'package:aloanimal/view/home_page.dart';
import 'package:aloanimal/view/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final _formKey = GlobalKey<FormState>();
  final rolebaseController = RoleBaseController();
  @override
  Widget build(BuildContext context) {
    String? email;
    String? password;

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
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(top: 425),
              child: Text("Sign into your account",
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Colors.grey.shade600,
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
                height: 50,
                margin: const EdgeInsets.only(top: 480, left: 40, right: 40),
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
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
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
                margin: const EdgeInsets.only(top: 543, left: 40, right: 40),
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
                      suffixIcon: const Icon(Icons.visibility),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
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
                  onChanged: (value) {
                    password = value;
                  },
                )),
            Container(
                padding: const EdgeInsets.only(top: 617, left: 40, right: 40),
                child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        UserModel? loginUser = await rolebaseController
                            .signInWithEmailAndPassword(email!, password!);
                        if (loginUser!.role == 'admin') {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return AdminPage();
                          }));
                        } else if (loginUser.role != 'admin') {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        } else {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Ups! your login is failed'),
                                  content: Text('Please check your data again'),
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
                      'Sign In',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(230, 252, 87, 158),
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
