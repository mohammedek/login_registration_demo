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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAf6KMQ0g1kartXhYQYhTcSt7_2pD5ktZU',
    appId: '1:1052971033417:web:7cb317727fbfa636adf098',
    messagingSenderId: '1052971033417',
    projectId: 'login-registration-provider',
    authDomain: 'login-registration-provider.firebaseapp.com',
    storageBucket: 'login-registration-provider.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZChySNY0iiixh4Tsl7UpIS2-GjwVazYg',
    appId: '1:1052971033417:android:85ce859608450055adf098',
    messagingSenderId: '1052971033417',
    projectId: 'login-registration-provider',
    storageBucket: 'login-registration-provider.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-hdDEZBMWSktzlaKLAiRUcMAmxlRJjOs',
    appId: '1:1052971033417:ios:e69930b28538e3cbadf098',
    messagingSenderId: '1052971033417',
    projectId: 'login-registration-provider',
    storageBucket: 'login-registration-provider.appspot.com',
    iosBundleId: 'com.example.loginRegistrationDemo',
  );
}