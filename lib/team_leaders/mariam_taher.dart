import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class mariam_taher extends StatefulWidget {
  const mariam_taher({Key? key}) : super(key: key);

  @override
  _mariam_taherState createState() => _mariam_taherState();
}

class _mariam_taherState extends State<mariam_taher> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Mariam Taher ');
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
        noteRef: FirebaseFirestore.instance.collection('Mariam Taher '),
      ), //
    );
  }
}
