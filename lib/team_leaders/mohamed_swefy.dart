import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Refactor_Codes/Performance_Cards.dart';

class mohamed_swefy extends StatefulWidget {
  const mohamed_swefy({Key? key}) : super(key: key);

  @override
  _mohamed_swefyState createState() => _mohamed_swefyState();
}

class _mohamed_swefyState extends State<mohamed_swefy> {
  CollectionReference noteRef =
      FirebaseFirestore.instance.collection('Mohamed Adel Sweefy');
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
      // drawer: Drawer(
      //   backgroundColor: Colors.white,
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //
      //     children:  <Widget>[
      //        Column(
      //          mainAxisAlignment: MainAxisAlignment.center,
      //         children: const [
      //           UserAccountsDrawerHeader(
      //             accountName: Text("Dispatching Team"),
      //             accountEmail: Text("clusterleaders@talabat.com"),
      //             currentAccountPicture: CircleAvatar(
      //               backgroundColor: Colors.orange,
      //               child: Text(
      //                 "T",
      //                 style: TextStyle(fontSize: 40.0),
      //               ),
      //             ),
      //           ),
      //         ],
      //
      //       ),
      //       ExpansionTile(
      //         leading: Icon(Icons.accessibility_new_rounded),
      //         title: const Text(
      //           "Team Leaders",
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black87),
      //         ),
      //         children:<Widget> [
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Sayed Gamal",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>hussien_roshdy()));},
      //             child: Text(
      //               "Hussien Roshdy",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Nourhan Ahmed",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Ahmed Refaat",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Mohamed Sobhy",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Almoatasem bellah",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Amal Hagag",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //           InkWell(
      //             onTap:() {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sayed_gamal()));},
      //             child: Text(
      //               "Shrouk Salah",
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black87),
      //             ),
      //           ),
      //           SizedBox(
      //             height: 20,
      //           ),
      //         ],),
      //
      //
      //     ],
      //   ),
      // ),
      body: Flib_cards(
          noteRef:
              FirebaseFirestore.instance.collection('Mohamed Adel Sweefy')), //
    );
  }
}
