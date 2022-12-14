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
    apiKey: 'AIzaSyC8VyQuLG_LBF9yo3jg8OLFhCLQuIdbUl0',
    appId: '1:629554780366:web:c8b5b826adfcbd08dad89f',
    messagingSenderId: '629554780366',
    projectId: 'reddit-clone-tutorial-cc74f',
    authDomain: 'reddit-clone-tutorial-cc74f.firebaseapp.com',
    storageBucket: 'reddit-clone-tutorial-cc74f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKVPchAeN3FXpHgEMRoKyb-nnqS5T6U_Y',
    appId: '1:629554780366:android:a7936f6f09b1b924dad89f',
    messagingSenderId: '629554780366',
    projectId: 'reddit-clone-tutorial-cc74f',
    storageBucket: 'reddit-clone-tutorial-cc74f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBKsS4OfFaJYYBb3g01LHUK0BwinEEGX_w',
    appId: '1:629554780366:ios:04f0c06f5a54fc2edad89f',
    messagingSenderId: '629554780366',
    projectId: 'reddit-clone-tutorial-cc74f',
    storageBucket: 'reddit-clone-tutorial-cc74f.appspot.com',
    iosClientId: '629554780366-k0nd9p1ttgp72ns0q1shhe2a9lkscii9.apps.googleusercontent.com',
    iosBundleId: 'com.example.redditTutorial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBKsS4OfFaJYYBb3g01LHUK0BwinEEGX_w',
    appId: '1:629554780366:ios:04f0c06f5a54fc2edad89f',
    messagingSenderId: '629554780366',
    projectId: 'reddit-clone-tutorial-cc74f',
    storageBucket: 'reddit-clone-tutorial-cc74f.appspot.com',
    iosClientId: '629554780366-k0nd9p1ttgp72ns0q1shhe2a9lkscii9.apps.googleusercontent.com',
    iosBundleId: 'com.example.redditTutorial',
  );
}
