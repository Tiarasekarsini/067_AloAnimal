import 'package:aloanimal/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RoleBaseController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  bool get success => false;

  ///Metode untuk mendaftarkan pengguna baru dengan menggunakan email dan kata sandi
  Future<UserModel?> registerWithEmailAndPassword(
    String email,
    String namaPawrent,
    String password,
  ) async {
    try {
      ///membuat pengguna baru di Firebase
      final UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;

      ///jika proses create user berhasil, akan mengembalikan objek UserModel
      if (user != null) {
        final UserModel userBaru = UserModel(
          namaPawrent: namaPawrent,
          email: user.email ?? '',
          uid: user.uid,
          role: 'user',
        );

        //create a document in the users collection with the user's UID as the document id
        await userCollection.doc(userBaru.uid).set(userBaru.toMap());

        return userBaru;
      }
    } catch (e) {
      //
    }
    return null;
  }

  ///Metode untuk masuk dengan menggunakan email dan kata sandi
  Future<UserModel?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      ///mengautentikasi pengguna dan mengambil informasi dari Firestore
      final UserCredential userCredential = await auth
          .signInWithEmailAndPassword(email: email, password: password);
      final User? user = userCredential.user;

      ///proses jika sign in pengguna diterima dan sesuai, maka akan berhasil masuk
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

  ///metode untuk mengambil informasi pengguna yang sedang masuk
  UserModel? getCurrentUser() {
    final User? user = auth.currentUser;
    if (user != null) {
      return UserModel.fromFirebaseUser(user);
    }
    return null;
  }

  ///metode untuk keluar dari akun pengguna yang seddang masuk
  Future<void> signOut() async {
    await auth.signOut();
  }
}
