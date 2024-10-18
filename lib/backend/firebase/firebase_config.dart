import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDzIKtZAxQ7vNxR5KwluFHmj7SdpwhVlUE",
            authDomain: "appdevprp-dade9.firebaseapp.com",
            projectId: "appdevprp-dade9",
            storageBucket: "appdevprp-dade9.appspot.com",
            messagingSenderId: "1012415465728",
            appId: "1:1012415465728:web:6e14da6c4c6f4728f14be5",
            measurementId: "G-6Q3PXGRWPQ"));
  } else {
    await Firebase.initializeApp();
  }
}
