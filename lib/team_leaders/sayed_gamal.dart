import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class sayed_gamal extends StatefulWidget {
  const sayed_gamal({Key? key}) : super(key: key);

  @override
  _sayed_gamalState createState() => _sayed_gamalState();
}

class _sayed_gamalState extends State<sayed_gamal> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Sayed Gamal');
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
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ],
      ),

      body: Flib_cards(
          noteRef: FirebaseFirestore.instance.collection('Sayed Gamal')), //
    );
  }
}
