import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Refactor_Codes/Performance_Cards.dart';

class mohamed_sobhy extends StatefulWidget {
  const mohamed_sobhy({Key? key}) : super(key: key);

  @override
  _mohamed_sobhyState createState() => _mohamed_sobhyState();
}

class _mohamed_sobhyState extends State<mohamed_sobhy> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Mohamed Sobhy');
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
            noteRef: FirebaseFirestore.instance.collection('Mohamed Sobhy') //
            ));
  }
}
