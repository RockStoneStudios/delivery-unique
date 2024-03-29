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
    apiKey: 'AIzaSyBcLPoM05lpv5Zfpjm2KbCEZo1LVyxDnmY',
    appId: '1:140062691497:web:4b4e96a10a08b292b059b8',
    messagingSenderId: '140062691497',
    projectId: 'foods-944b0',
    authDomain: 'foods-944b0.firebaseapp.com',
    storageBucket: 'foods-944b0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCViBhDOVymp77lRZ8WewZwwpmfkMZi8y0',
    appId: '1:140062691497:android:34e366064d1d9009b059b8',
    messagingSenderId: '140062691497',
    projectId: 'foods-944b0',
    storageBucket: 'foods-944b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDs-ybt_mfHuhSTKgAsF4u_Xd4fBVpQE0c',
    appId: '1:140062691497:ios:f07efa21716e3e5db059b8',
    messagingSenderId: '140062691497',
    projectId: 'foods-944b0',
    storageBucket: 'foods-944b0.appspot.com',
    iosBundleId: 'com.example.foodApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDs-ybt_mfHuhSTKgAsF4u_Xd4fBVpQE0c',
    appId: '1:140062691497:ios:38a57bb621f8a1f5b059b8',
    messagingSenderId: '140062691497',
    projectId: 'foods-944b0',
    storageBucket: 'foods-944b0.appspot.com',
    iosBundleId: 'com.example.foodApp.RunnerTests',
  );
}
