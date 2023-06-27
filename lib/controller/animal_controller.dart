import 'dart:async';

import 'package:aloanimal/model/animal_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AnimalController {
  final animalCollection = FirebaseFirestore.instance.collection('animal');

  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  //list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  Future<void> addAnimal(AnimalModel anmodel) async {
    final animal = anmodel.toMap();

    final DocumentReference docRef = await animalCollection.add(animal);

    final String docId = docRef.id;

    final AnimalModel animalModel = AnimalModel(
        id: docId,
        namaK: anmodel.namaK,
        tanggalLahir: anmodel.tanggalLahir,
        jeniskelamin: anmodel.jeniskelamin,
        age: anmodel.age,
        ras: anmodel.ras,
        color: anmodel.color);

    await docRef.update(animalModel.toMap());
  }

  Future getContact() async {
    final animal = await animalCollection.get();
    streamController.sink.add(animal.docs);
    return animal.docs;
  }

  Future<void> editAnimal(AnimalModel anmodel) async {
    var document = animalCollection.doc(anmodel.id);

    final AnimalModel animalModel = AnimalModel(
        id: anmodel.id,
        namaK: anmodel.namaK,
        tanggalLahir: anmodel.tanggalLahir,
        jeniskelamin: anmodel.jeniskelamin,
        age: anmodel.age,
        ras: anmodel.ras,
        color: anmodel.color);

    await document.update(animalModel.toMap());
  }

  Future<void> delAnimal(String id) async {
    var document = animalCollection.doc(id);
    var DocumentSnapshot = await document.get();

    if (DocumentSnapshot.exists) {
      await document.delete();
    } else {
      throw Exception('Failed to delete data');
    }
  }
}
