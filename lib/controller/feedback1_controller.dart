import 'dart:async';

import 'package:aloanimal/model/feedback1_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FeedBack1Controller {
  ///membuat objek fd1Collection yang merujuk pada collection animal di firestore firebase
  final fd1Collection = FirebaseFirestore.instance.collection('feedback1');

  ///Deklarasi streamcontroller untuk mengelola data
  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  ///list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  ///membuat method untuk menambahkan data feedback
  Future<void> addFeedback1(Feedback1Model fd1model) async {
    ///mengubah objek AnimalModel menjadi Map
    final fd1 = fd1model.toMap();

    ///metode untuk menambahkan data ke collection dan mengembalikan nilai ref dokumen
    final DocumentReference docRef = await fd1Collection.add(fd1);

    final String docId = docRef.id;

    ///membuat objek untuk menjaga data yang telah disimpan di Firestore
    final Feedback1Model feedback1model = Feedback1Model(
        id: docId,
        namaPenyakit: fd1model.namaPenyakit,
        feedback: fd1model.feedback);

    await docRef.update(feedback1model.toMap());
  }

  ///membuat metode untuk mengambil/menampilkan data yang tersimpan di firestore
  Future getFeedback1() async {
    final fd = await fd1Collection.get();
    streamController.sink.add(fd.docs);
    return fd.docs;
  }

  ///membuat metode untuk mengubah data animal
  Future<void> editFeedback1(Feedback1Model fd1model) async {
    var document = fd1Collection.doc(fd1model.id);

    final Feedback1Model feedback1model = Feedback1Model(
        id: fd1model.id,
        namaPenyakit: fd1model.namaPenyakit,
        feedback: fd1model.feedback);

    /// proses update data feedback
    await document.update(feedback1model.toMap());
  }
}
