import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class morad_mahmoud extends StatefulWidget {
  const morad_mahmoud({Key? key}) : super(key: key);

  @override
  _morad_mahmoudState createState() => _morad_mahmoudState();
}

class _morad_mahmoudState extends State<morad_mahmoud> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Morad Mahmoud');
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
        noteRef: FirebaseFirestore.instance.collection('Morad Mahmoud'),
      ), //
    );
  }
}
