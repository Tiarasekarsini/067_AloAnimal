import 'package:aloanimal/controller/rolebase_controller.dart';
import 'package:aloanimal/view/admin/diagnosis_admin.dart';
import 'package:aloanimal/view/admin/feedback1/feedback1.dart';

import 'package:aloanimal/view/sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final RoleBaseController rbc = RoleBaseController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello, Pawrents!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    rbc.signOut();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(94, 158, 158, 158),
            thickness: 1,
            indent: 27,
            endIndent: 27,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
                padding: EdgeInsets.all(15),
                color: const Color.fromARGB(210, 33, 149, 243),
                height: 130,
                width: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Diagnostics Data',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                        const DiagnosisAdmin()));
                          },
                          icon: const Icon(Icons.navigate_next_rounded),
                          iconSize: 45,
                        ),
                      )
                    ]),
                  ],
                )),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
                padding: EdgeInsets.all(15),
                color: const Color.fromARGB(212, 233, 30, 98),
                height: 130,
                width: 340,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Feedback',
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
                                    builder: (context) => const Feedback1()));
                          },
                          icon: const Icon(Icons.navigate_next_rounded),
                          iconSize: 45,
                        ),
                      )
                    ]),
                  ],
                )),
          ),
        ],
      ),
    ));
  }
}
