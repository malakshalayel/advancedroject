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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyC9YnAh1MBVws1TM6DS7zWyxGgfLR-Qo68',
    appId: '1:96068686754:web:ecca0f31bffe1581b158fb',
    messagingSenderId: '96068686754',
    projectId: 'flutter-app-distribution-832d9',
    authDomain: 'flutter-app-distribution-832d9.firebaseapp.com',
    storageBucket: 'flutter-app-distribution-832d9.firebasestorage.app',
    measurementId: 'G-H5C3CM70NW',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC6FYOCizLjw23Jjp-ulkZvi7U3--OfMQ0',
    appId: '1:96068686754:ios:8e4c3d8b1e5dea5fb158fb',
    messagingSenderId: '96068686754',
    projectId: 'flutter-app-distribution-832d9',
    storageBucket: 'flutter-app-distribution-832d9.firebasestorage.app',
    iosBundleId: 'com.example.advancedProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC9YnAh1MBVws1TM6DS7zWyxGgfLR-Qo68',
    appId: '1:96068686754:web:a3c43b2c00d9ac9cb158fb',
    messagingSenderId: '96068686754',
    projectId: 'flutter-app-distribution-832d9',
    authDomain: 'flutter-app-distribution-832d9.firebaseapp.com',
    storageBucket: 'flutter-app-distribution-832d9.firebasestorage.app',
    measurementId: 'G-D7BH4XD4DG',
  );
}
