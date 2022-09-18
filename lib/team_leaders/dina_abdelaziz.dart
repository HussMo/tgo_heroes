import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class dina_abdelaziz extends StatefulWidget {
  const dina_abdelaziz({Key? key}) : super(key: key);

  @override
  _dina_abdelazizState createState() => _dina_abdelazizState();
}

class _dina_abdelazizState extends State<dina_abdelaziz> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Dina Abdel Aziz ');
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
