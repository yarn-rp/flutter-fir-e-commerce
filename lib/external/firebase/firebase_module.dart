import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_fir_e_commerce/firebase_options.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  @singleton
  @preResolve
  Future<FirebaseApp> get firebaseApp async => Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
