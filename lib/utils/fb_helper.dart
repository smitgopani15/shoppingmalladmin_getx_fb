import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FbHelper {
  static FbHelper fbHelper = FbHelper._();

  FbHelper._();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<String?> signIn({
    required email,
    required password,
  }) async {
    String? msg;
    await firebaseAuth
        .signInWithEmailAndPassword(
          email: email,
          password: password,
        )
        .then(
          (value) => msg = "login successfully !",
        )
        .catchError(
          (e) => msg = "login failed !",
        );
    return msg;
  }

  Future<String?> resetPassword({
    email,
  }) async {
    String? msg;
    await firebaseAuth
        .sendPasswordResetEmail(email: email)
        .then(
          (value) => msg = "password successfully change !",
        )
        .catchError(
          (e) => msg = "password reset failed !",
        );
    return msg;
  }

  bool checkUser() {
    User? user = firebaseAuth.currentUser;
    return user != null;
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  Future<void> insertItem({
    name,
    price,
    description,
    offer,
    category,
    image,
  }) async {
    User? user = firebaseAuth.currentUser;
    String uid = user!.uid;
    await firebaseFirestore
        .collection("admin")
        .doc(uid)
        .collection("item")
        .add({
      "name": name,
      "price": price,
      "description": description,
      "offer": offer,
      "category": category,
      "image": image,
    });
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> readItem() {
    User? user = firebaseAuth.currentUser;
    var uid = user!.uid;
    return firebaseFirestore
        .collection("admin")
        .doc(uid)
        .collection("item")
        .snapshots();
  }

  void updateItem({
    name,
    price,
    description,
    offer,
    category,
    image,
    id,
  }) {
    User? user = firebaseAuth.currentUser;
    var uid = user!.uid;
    firebaseFirestore
        .collection("admin")
        .doc(uid)
        .collection("item")
        .doc(id)
        .set({
      "name": name,
      "price": price,
      "description": description,
      "offer": offer,
      "category": category,
      "image": image,
    });
  }

  void deleteItem({
    id,
  }) {
    User? user = firebaseAuth.currentUser;
    var uid = user!.uid;
    firebaseFirestore
        .collection("admin")
        .doc(uid)
        .collection("item")
        .doc(id)
        .delete();
  }
}
