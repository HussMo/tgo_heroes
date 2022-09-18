import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class amal_sayed extends StatefulWidget {
  const amal_sayed({Key? key}) : super(key: key);

  @override
  _amal_sayedState createState() => _amal_sayedState();
}

class _amal_sayedState extends State<amal_sayed> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Amal Sayed ');
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
        noteRef: FirebaseFirestore.instance.collection('Amal Sayed '),
      ), //
    );
  }
}
