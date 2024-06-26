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
    apiKey: 'AIzaSyCXLKq8SS4wMTMKUBmQzx7CiRARA363kPw',
    appId: '1:427268509489:web:58504d1be2c9bcc139ea10',
    messagingSenderId: '427268509489',
    projectId: 'fir-chatapp-ff176',
    authDomain: 'fir-chatapp-ff176.firebaseapp.com',
    storageBucket: 'fir-chatapp-ff176.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLcg6oEeJa7Uy7EBYCvlsvu1gvL-D7dak',
    appId: '1:427268509489:android:4981cc9714b681f039ea10',
    messagingSenderId: '427268509489',
    projectId: 'fir-chatapp-ff176',
    storageBucket: 'fir-chatapp-ff176.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkSRyGs9MAJfbfWRueDhhpXSSJbBhIkjQ',
    appId: '1:427268509489:ios:67384a951df4650639ea10',
    messagingSenderId: '427268509489',
    projectId: 'fir-chatapp-ff176',
    storageBucket: 'fir-chatapp-ff176.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkSRyGs9MAJfbfWRueDhhpXSSJbBhIkjQ',
    appId: '1:427268509489:ios:67384a951df4650639ea10',
    messagingSenderId: '427268509489',
    projectId: 'fir-chatapp-ff176',
    storageBucket: 'fir-chatapp-ff176.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCXLKq8SS4wMTMKUBmQzx7CiRARA363kPw',
    appId: '1:427268509489:web:468d7e6c63f606fd39ea10',
    messagingSenderId: '427268509489',
    projectId: 'fir-chatapp-ff176',
    authDomain: 'fir-chatapp-ff176.firebaseapp.com',
    storageBucket: 'fir-chatapp-ff176.appspot.com',
  );

}