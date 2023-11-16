import 'dart:async';

import 'package:aloanimal/model/animal_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AnimalController {
  ///membuat objek animalCollection yang merujuk pada collection animal di firestore firebase
  final animalCollection = FirebaseFirestore.instance.collection('animal');

  ///Deklarasi streamcontroller untuk mengelola data
  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  ///list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  ///membuat method untuk menambahkan data animal
  Future<void> addAnimal(AnimalModel anmodel) async {
    ///mengubah objek AnimalModel menjadi Map
    final animal = anmodel.toMap();

    ///metode untuk menambahkan data ke collection dan mengembalikan nilai ref dokumen
    final DocumentReference docRef = await animalCollection.add(animal);

    final String docId = docRef.id;

    ///membuat objek untuk menjaga data yang telah disimpan di Firestore
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

  ///membuat metode untuk mengambil/menampilkan data yang tersimpan di firestore
  Future getContact() async {
    final animal = await animalCollection.get();
    streamController.sink.add(animal.docs);
    return animal.docs;
  }

  ///membuat metode untuk mengubah data animal
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

  ///membuat metode untuk proses delete data animal
  Future<void> delAnimal(String id) async {
    var document = animalCollection.doc(id);
    var DocumentSnapshot = await document.get();

    ///memeriksa apakah data yang akan dihapus ada/tidak
    if (DocumentSnapshot.exists) {
      /// proses delete jika data tersebut ada
      await document.delete();

      ///output apabila data yang akan dihapus tidak ditemukan
    } else {
      throw Exception('Failed to delete data');
    }
  }
}
