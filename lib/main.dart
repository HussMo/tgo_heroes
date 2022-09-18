import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var fbm = FirebaseMessaging.instance;
  @override
  void initState() {
    fbm.getToken().then((token) {
      print('=======================================');
      print(token);
      print('=======================================');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TGO',
        theme: ThemeData(
          primaryColor: Colors.white,
          buttonColor: Colors.deepOrange,
        ),
        debugShowCheckedModeBanner: false,
        home: const Loign_page());
  }
}

//write human class
