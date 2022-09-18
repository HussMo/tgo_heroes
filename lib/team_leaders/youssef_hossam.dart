import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class youssef_hossam extends StatefulWidget {
  const youssef_hossam({Key? key}) : super(key: key);

  @override
  _youssef_hossamState createState() => _youssef_hossamState();
}

class _youssef_hossamState extends State<youssef_hossam> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Youssef Hossameldin ');
  int ci = 0;
  int Index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          'Performance View',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),

      body: Flib_cards(
          noteRef:
              FirebaseFirestore.instance.collection('Youssef Hossameldin ')), //
    );
  }
}
