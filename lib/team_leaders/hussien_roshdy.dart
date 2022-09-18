import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class hussien_roshdy extends StatefulWidget {
  const hussien_roshdy({Key? key}) : super(key: key);

  @override
  _hussien_roshdyState createState() => _hussien_roshdyState();
}

class _hussien_roshdyState extends State<hussien_roshdy> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Hussien Roshdy');
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
        noteRef: FirebaseFirestore.instance.collection('Hussien Roshdy'),
      ), //
    );
  }
}
