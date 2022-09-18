import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class osama_nabil extends StatefulWidget {
  const osama_nabil({Key? key}) : super(key: key);

  @override
  _osama_nabilState createState() => _osama_nabilState();
}

class _osama_nabilState extends State<osama_nabil> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Osama Nabil ');
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
          noteRef: FirebaseFirestore.instance.collection('Osama Nabil ')), //
    );
  }
}
