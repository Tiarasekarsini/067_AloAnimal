import 'dart:async';

import 'package:aloanimal/model/feedback1_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FeedBack1Controller {
  final fd1Collection = FirebaseFirestore.instance.collection('feedback1');

  final StreamController<List<DocumentSnapshot>> streamController =
      StreamController<List<DocumentSnapshot>>.broadcast();

  //list untuk menampung data
  Stream<List<DocumentSnapshot>> get stream => streamController.stream;

  Future<void> addFeedback1(Feedback1Model fd1model) async {
    final fd1 = fd1model.toMap();

    final DocumentReference docRef = await fd1Collection.add(fd1);

    final String docId = docRef.id;

    final Feedback1Model feedback1model = Feedback1Model(
        id: docId,
        namaPenyakit: fd1model.namaPenyakit,
        feedback: fd1model.feedback);

    await docRef.update(feedback1model.toMap());
  }

  Future getFeedback1() async {
    final fd = await fd1Collection.get();
    streamController.sink.add(fd.docs);
    return fd.docs;
  }

  Future<void> editFeedback1(Feedback1Model fd1model) async {
    var document = fd1Collection.doc(fd1model.id);

    final Feedback1Model feedback1model = Feedback1Model(
        id: fd1model.id,
        namaPenyakit: fd1model.namaPenyakit,
        feedback: fd1model.feedback);

    await document.update(feedback1model.toMap());
  }
}
