import 'package:flutter/material.dart';

class AnimalData extends StatefulWidget {
  const AnimalData({super.key});

  @override
  State<AnimalData> createState() => _AnimalDataState();
}

class _AnimalDataState extends State<AnimalData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Padding(padding: const EdgeInsets.only(top: 10)),
          Text(
            'Halaman Animal Data',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ])));
  }
}
