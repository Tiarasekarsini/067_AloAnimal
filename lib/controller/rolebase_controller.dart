import 'package:aloanimal/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RoleBaseController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  bool get success => false;

  Future<UserModel?> registerWithEmailAndPassword(
      String email, String namaPawrent, String phone, String password) async {
    try {
      final UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;

      if (user != null) {
        final UserModel userBaru = UserModel(
            namaPawrent: namaPawrent, email: user.email ?? '', uid: user.uid);

        //create a document in the users collection with the user's UID as the document id
        await userCollection.doc(userBaru.uid).set(userBaru.toMap());

        return userBaru;
      }
    } catch (e) {
      //
    }
    return null;
  }

  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential userCredential = await auth
          .signInWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;

      if (user != null) {
        final DocumentSnapshot snapshot =
            await userCollection.doc(user.uid).get();

        final UserModel currentUser = UserModel(
          uid: user.uid,
          email: user.email ?? '',
          namaPawrent: snapshot['namaPawrent'] ?? '',
          role: snapshot['role'] ?? '',
        );

        return currentUser;
      }
    } catch (e) {
      //
    }
    return null;
  }

  UserModel? getCurrentUser() {
    final User? user = auth.currentUser;
    if (user != null) {
      return UserModel.fromFirebaseUser(user);
    }
    return null;
  }
}
