// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBphTgv-bjAqs2vvSuYE9iwMi_CYtcEyKI',
    appId: '1:647185753404:web:960f73179f86f67137aa39',
    messagingSenderId: '647185753404',
    projectId: 'localinemart-fa237',
    authDomain: 'localinemart-fa237.firebaseapp.com',
    databaseURL: 'https://localinemart-fa237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'localinemart-fa237.appspot.com',
    measurementId: 'G-YSHTLCFG7V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCBmfuS9Zrxkb9SWlz6VXZSPWyTaL-SpcM',
    appId: '1:647185753404:android:747980286cf58c6737aa39',
    messagingSenderId: '647185753404',
    projectId: 'localinemart-fa237',
    databaseURL: 'https://localinemart-fa237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'localinemart-fa237.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATry9YSnGRKKnk0SfMu2dnD6acj0T2-_g',
    appId: '1:647185753404:ios:a3da38c73085e9ae37aa39',
    messagingSenderId: '647185753404',
    projectId: 'localinemart-fa237',
    databaseURL: 'https://localinemart-fa237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'localinemart-fa237.appspot.com',
    iosBundleId: 'com.example.LocaLineMart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATry9YSnGRKKnk0SfMu2dnD6acj0T2-_g',
    appId: '1:647185753404:ios:a3da38c73085e9ae37aa39',
    messagingSenderId: '647185753404',
    projectId: 'localinemart-fa237',
    databaseURL: 'https://localinemart-fa237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'localinemart-fa237.appspot.com',
    iosBundleId: 'com.example.LocaLineMart',
  );
}
