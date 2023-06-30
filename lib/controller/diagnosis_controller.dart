import 'dart:async';

import 'package:aloanimal/model/diagnosis_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DiagnosisController {
  final animalCollection = FirebaseFirestore.instance.collection('diagnosis');

  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  //list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  Future<void> addDiagnosis(DiagnosisModel diagnosisModel) async {
    final diagnosis = diagnosisModel.toMap();

    final DocumentReference docRef = await animalCollection.add(diagnosis);

    final String docId = docRef.id;

    final DiagnosisModel dModel = DiagnosisModel(
      id: docId,
      namaPenyakit: diagnosisModel.namaPenyakit,
    );

    await docRef.update(dModel.toMap());
  }
}
