import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class Ahmed_Refaat extends StatefulWidget {
  const Ahmed_Refaat({Key? key}) : super(key: key);

  @override
  _Ahmed_RefaatState createState() => _Ahmed_RefaatState();
}

class _Ahmed_RefaatState extends State<Ahmed_Refaat> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Ahmed Refaat ');
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
        noteRef: FirebaseFirestore.instance.collection('Ahmed Refaat '),
      ), //
    );
  }
}
