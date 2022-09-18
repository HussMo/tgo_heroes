import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class naglaa_ahmed extends StatefulWidget {
  const naglaa_ahmed({Key? key}) : super(key: key);

  @override
  _naglaa_ahmedState createState() => _naglaa_ahmedState();
}

class _naglaa_ahmedState extends State<naglaa_ahmed> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Naglaa Ahmed ');
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
          noteRef: FirebaseFirestore.instance.collection('Naglaa Ahmed ')), //
    );
  }
}
