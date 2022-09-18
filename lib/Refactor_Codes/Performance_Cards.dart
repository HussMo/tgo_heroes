import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Flib_cards extends StatelessWidget {
  var noteRef;
  Flib_cards({required this.noteRef});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage('images/Home_screen.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: StreamBuilder<QuerySnapshot>(
          stream: noteRef.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text('No Data'));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('loading .....');
            }
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 15),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, i) {
                      dynamic store = snapshot.data!.docs[i].data();
                      return FlipCard(
                        direction: FlipDirection.HORIZONTAL, // default
                        front: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('images/dark.jfif')),
                            ),
                            child: Center(
                                child: Text(
                              '${snapshot.data!.docs[i].id}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  color: Colors.white),
                            )),
                          ),
                        ),
                        back: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/dark.jfif')),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // ignore: predfer_const_constructors
                                Text(
                                  'AHT : ${store!["0"][0]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'No.Calls : ${store!["0"][1]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'No.issues : ${store!["0"][2]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'RF Phase : ${store!["0"][3]}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              );
            }
            return Text('Hi');
          }),
    );
  }
}
