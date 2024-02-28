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
    apiKey: 'AIzaSyAnyG1NIlNaowAt-X3IsON9d_Zu3bbnOZ0',
    appId: '1:792265527658:web:a35ffcebcd5bccaf22d513',
    messagingSenderId: '792265527658',
    projectId: 'databasebsp-4f106',
    authDomain: 'databasebsp-4f106.firebaseapp.com',
    storageBucket: 'databasebsp-4f106.appspot.com',
    measurementId: 'G-HCZ0NPNQEL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA30XuzFmPbfg6lWXP0ggKDcdNv23LT4B0',
    appId: '1:792265527658:android:f92555153e006d7922d513',
    messagingSenderId: '792265527658',
    projectId: 'databasebsp-4f106',
    storageBucket: 'databasebsp-4f106.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCL5ToncfniwPiGq7LDM9fZXqlzIKGRzew',
    appId: '1:792265527658:ios:9464aaefa2b40d5622d513',
    messagingSenderId: '792265527658',
    projectId: 'databasebsp-4f106',
    storageBucket: 'databasebsp-4f106.appspot.com',
    iosBundleId: 'com.example.bsp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCL5ToncfniwPiGq7LDM9fZXqlzIKGRzew',
    appId: '1:792265527658:ios:601377b817689baf22d513',
    messagingSenderId: '792265527658',
    projectId: 'databasebsp-4f106',
    storageBucket: 'databasebsp-4f106.appspot.com',
    iosBundleId: 'com.example.bsp.RunnerTests',
  );
}
