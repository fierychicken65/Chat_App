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
    apiKey: 'AIzaSyD7Jy8OJZbG6x9N-C0qcEYaD2-sACl9sA4',
    appId: '1:522110472520:web:d67d0f0a3693613cefa37d',
    messagingSenderId: '522110472520',
    projectId: 'giga-chad-51548',
    authDomain: 'giga-chad-51548.firebaseapp.com',
    storageBucket: 'giga-chad-51548.appspot.com',
    measurementId: 'G-7H0PQ8B0TF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcbljCWnNtH5jfvFoO6qgUFzHxfzfJSv4',
    appId: '1:522110472520:android:9a5e1aa52eaf103cefa37d',
    messagingSenderId: '522110472520',
    projectId: 'giga-chad-51548',
    storageBucket: 'giga-chad-51548.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBgdKlRUB46XIBXkbFMYyzcXzx8uW69QxA',
    appId: '1:522110472520:ios:e9fb227ac755d28cefa37d',
    messagingSenderId: '522110472520',
    projectId: 'giga-chad-51548',
    storageBucket: 'giga-chad-51548.appspot.com',
    iosBundleId: 'com.example.chatApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBgdKlRUB46XIBXkbFMYyzcXzx8uW69QxA',
    appId: '1:522110472520:ios:e9fb227ac755d28cefa37d',
    messagingSenderId: '522110472520',
    projectId: 'giga-chad-51548',
    storageBucket: 'giga-chad-51548.appspot.com',
    iosBundleId: 'com.example.chatApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7Jy8OJZbG6x9N-C0qcEYaD2-sACl9sA4',
    appId: '1:522110472520:web:16dbb4ea42a6562eefa37d',
    messagingSenderId: '522110472520',
    projectId: 'giga-chad-51548',
    authDomain: 'giga-chad-51548.firebaseapp.com',
    storageBucket: 'giga-chad-51548.appspot.com',
    measurementId: 'G-RMYW1WQM60',
  );
}
