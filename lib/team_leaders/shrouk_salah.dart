import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class shrouk_salah extends StatefulWidget {
  const shrouk_salah({Key? key}) : super(key: key);

  @override
  _shrouk_salahState createState() => _shrouk_salahState();
}

class _shrouk_salahState extends State<shrouk_salah> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Shrouk Salah');
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
          noteRef: FirebaseFirestore.instance.collection('Shrouk Salah')), //
    );
  }
}
