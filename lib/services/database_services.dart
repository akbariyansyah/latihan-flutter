import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseServices {
  static CollectionReference productCollection =
      Firestore.instance.collection("products");

  static Future<void> createOrUpdateProduct(String id,
      {String name, int price}) async {
    await productCollection.document(id).setData({
      "name": name,
      "harga": price,
    },merge: true);
  }
  static Future<DocumentSnapshot> getProduct(String id) async {
    return await productCollection.document(id).get();
  }
  static Future<void> deleteProduct(String id) async {
    await productCollection.document(id).delete();
  }

  static Future<String> uploadImage(File imageFile) async {
    String filename = basename(imageFile.path);
    StorageReference ref = FirebaseStorage.instance.ref().child(filename);
    StorageUploadTask task = ref.putFile(imageFile);

    StorageTaskSnapshot snapshot = await task.onComplete;
    return await snapshot.ref.getDownloadURL();
  }
}
