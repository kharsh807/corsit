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
    apiKey: 'AIzaSyAW2dwRhbor0HPAVyU7cQ5bPUCtgbF7BSs',
    appId: '1:479918453282:web:770c1eb88e92429f45907b',
    messagingSenderId: '479918453282',
    projectId: 'rocsit-f248a',
    authDomain: 'rocsit-f248a.firebaseapp.com',
    storageBucket: 'rocsit-f248a.appspot.com',
    measurementId: 'G-2YMJ5F2BVD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC544cCHjz7LeqQ9B2bDjfM_ykNHhLt3b4',
    appId: '1:479918453282:android:e16b53f9f9a476c645907b',
    messagingSenderId: '479918453282',
    projectId: 'rocsit-f248a',
    storageBucket: 'rocsit-f248a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJ7v1blaDTdkQC4MvMDtqq7hK5cEnz7Ic',
    appId: '1:479918453282:ios:d7797e09dd91492545907b',
    messagingSenderId: '479918453282',
    projectId: 'rocsit-f248a',
    storageBucket: 'rocsit-f248a.appspot.com',
    iosClientId: '479918453282-7gqdk4ihb4jbd5ckr0vc5qgdd6elm539.apps.googleusercontent.com',
    iosBundleId: 'com.example.rocsit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJ7v1blaDTdkQC4MvMDtqq7hK5cEnz7Ic',
    appId: '1:479918453282:ios:d7797e09dd91492545907b',
    messagingSenderId: '479918453282',
    projectId: 'rocsit-f248a',
    storageBucket: 'rocsit-f248a.appspot.com',
    iosClientId: '479918453282-7gqdk4ihb4jbd5ckr0vc5qgdd6elm539.apps.googleusercontent.com',
    iosBundleId: 'com.example.rocsit',
  );
}