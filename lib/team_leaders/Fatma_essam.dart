import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class fatma_essam extends StatefulWidget {
  const fatma_essam({Key? key}) : super(key: key);

  @override
  _fatma_essamState createState() => _fatma_essamState();
}

class _fatma_essamState extends State<fatma_essam> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Fatma Essam ');
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
        noteRef: FirebaseFirestore.instance.collection('Fatma Essam '),
      ), //
    );
  }
}
