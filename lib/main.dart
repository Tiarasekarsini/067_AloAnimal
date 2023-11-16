import 'package:aloanimal/view/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

///Explanation of what the query code is for
///what will be generated by this query when run
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      ///menghilangkan label debug di pojok kanan atas
      debugShowCheckedModeBanner: false,

      ///mngubah warna primary aplikasi
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(230, 252, 87, 158),
        ),
        useMaterial3: true,
      ),

      ///menjadikan WelcomePage sebagai halaman awal ketika aplikasi pertama kali dibuka
      home: const WelcomePage(),
    );
  }
}
