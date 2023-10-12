import 'dart:async';

import 'package:aloanimal/model/diagnosis_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DiagnosisController {
  ///membuat objek diagnosisCollection yang merujuk pada collection diagnosis di firestore firebase
  final diagnosisCollection =
      FirebaseFirestore.instance.collection('diagnosis');

  ///Deklarasi streamcontroller untuk mengelola data
  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  ///list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  ///membuat method untuk menambahkan data diagnosis
  Future<void> addDiagnosis(DiagnosisModel diagnosisModel) async {
    ///mengubah objek DiagnosisModel menjadi Map
    final diagnosis = diagnosisModel.toMap();

    ///metode untuk menambahkan data ke collection dan mengembalikan nilai
    final DocumentReference docRef = await diagnosisCollection.add(diagnosis);

    final String docId = docRef.id;

    ///membuat objek untuk menjaga data yang telah disimpan di firestore
    final DiagnosisModel dModel = DiagnosisModel(
      id: docId,
      namaPenyakit: diagnosisModel.namaPenyakit,
    );

    await docRef.update(dModel.toMap());
  }

  ///membuat metode untuk mengambil/menampilkan data yang tersimpan di firestore
  Future getContact() async {
    final diagnosis = await diagnosisCollection.get();
    streamController.sink.add(diagnosis.docs);
    return diagnosis.docs;
  }
}
