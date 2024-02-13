import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/admin/admin__login.dart';
import 'package:food_app/firebase_options.dart';
import 'package:food_app/pages/bottom_navigation.dart';
import 'package:food_app/pages/home.dart';
import 'package:food_app/pages/login.dart';
import 'package:food_app/pages/onBoard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Platform.isAndroid
  //     ? await Firebase.initializeApp(
  //         options: const FirebaseOptions(
  //             apiKey: "AIzaSyCViBhDOVymp77lRZ8WewZwwpmfkMZi8y0",
  //             appId: "1:140062691497:android:34e366064d1d9009b059b8",
  //             messagingSenderId: "140062691497",
  //             projectId: "foods-944b0"))
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Delivery',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Onboard());
  }
}
