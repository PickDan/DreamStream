// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB43YcKOZpQDVc_riI6V_fBRtJTe1GnlkY',
    appId: '1:420005611894:web:06f3ec0a90577725eb5257',
    messagingSenderId: '420005611894',
    projectId: 'prueba-sp-ff65f',
    authDomain: 'prueba-sp-ff65f.firebaseapp.com',
    databaseURL: 'https://prueba-sp-ff65f-default-rtdb.firebaseio.com',
    storageBucket: 'prueba-sp-ff65f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8liCJi2g6dOp34Tk5n8AtGHJbeTsdjow',
    appId: '1:420005611894:android:a22c7e85f077ac79eb5257',
    messagingSenderId: '420005611894',
    projectId: 'prueba-sp-ff65f',
    databaseURL: 'https://prueba-sp-ff65f-default-rtdb.firebaseio.com',
    storageBucket: 'prueba-sp-ff65f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuBrKTqqIuz68A8Rbkh4hQYbc4mMg7SyU',
    appId: '1:420005611894:ios:52fea53d61138d2eeb5257',
    messagingSenderId: '420005611894',
    projectId: 'prueba-sp-ff65f',
    databaseURL: 'https://prueba-sp-ff65f-default-rtdb.firebaseio.com',
    storageBucket: 'prueba-sp-ff65f.appspot.com',
    iosBundleId: 'com.example.taller1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuBrKTqqIuz68A8Rbkh4hQYbc4mMg7SyU',
    appId: '1:420005611894:ios:52fea53d61138d2eeb5257',
    messagingSenderId: '420005611894',
    projectId: 'prueba-sp-ff65f',
    databaseURL: 'https://prueba-sp-ff65f-default-rtdb.firebaseio.com',
    storageBucket: 'prueba-sp-ff65f.appspot.com',
    iosBundleId: 'com.example.taller1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB43YcKOZpQDVc_riI6V_fBRtJTe1GnlkY',
    appId: '1:420005611894:web:40bf98973381462feb5257',
    messagingSenderId: '420005611894',
    projectId: 'prueba-sp-ff65f',
    authDomain: 'prueba-sp-ff65f.firebaseapp.com',
    databaseURL: 'https://prueba-sp-ff65f-default-rtdb.firebaseio.com',
    storageBucket: 'prueba-sp-ff65f.appspot.com',
  );

}