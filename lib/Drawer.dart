import 'package:flutter/material.dart';
import 'package:test_app/team_leaders/Fatma_essam.dart';
import 'package:test_app/team_leaders/ahmed_refaat.dart';
import 'package:test_app/team_leaders/amal_sayed.dart';
import 'package:test_app/team_leaders/dina_abdelaziz.dart';
import 'package:test_app/team_leaders/hussien_roshdy.dart';
import 'package:test_app/team_leaders/mariam_taher.dart';
import 'package:test_app/team_leaders/mohamed_sobhy.dart';
import 'package:test_app/team_leaders/mohamed_swefy.dart';
import 'package:test_app/team_leaders/naglaa_ahmed.dart';
import 'package:test_app/team_leaders/osama_nabil.dart';
import 'package:test_app/team_leaders/saif_ahmed.dart';
import 'package:test_app/team_leaders/sayed_gamal.dart';
import 'package:test_app/team_leaders/shrouk_salah.dart';
import 'package:test_app/team_leaders/youssef_hossam.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({Key? key}) : super(key: key);

  @override
  State<Menuscreen> createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 150),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('images/Drawer.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: const [
            //     // UserAccountsDrawerHeader(
            //     //   accountName: Text("Dispatching Team"),
            //     //   accountEmail: Text("clusterleaders@talabat.com"),
            //     //   currentAccountPicture: CircleAvatar(
            //     //     backgroundColor: Colors.orange,
            //     //     child: Text(
            //     //       "T",
            //     //       style: TextStyle(fontSize: 40.0),
            //     //     ),
            //     //   ),
            //     // ),
            //   ],
            // ),
            ExpansionTile(
              leading: const Icon(Icons.accessibility_new_rounded),
              title: const Text(
                "Team Leaders",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const hussien_roshdy()));
                  },
                  child: const Text(
                    "Hussien Roshdy",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const sayed_gamal()));
                  },
                  child: const Text(
                    "Sayed Gamal",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const shrouk_salah()));
                  },
                  child: const Text(
                    "Aya Hossam",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const mohamed_sobhy()));
                  },
                  child: const Text(
                    "Mohamed Sobhy",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const mohamed_swefy()));
                  },
                  child: const Text(
                    "Mohamed Swefy",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Ahmed_Refaat()));
                  },
                  child: const Text(
                    "Ahmed Refaat",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const amal_sayed()));
                  },
                  child: const Text(
                    "Amal Sayed ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const dina_abdelaziz()));
                  },
                  child: const Text(
                    "Dina Abdel Aziz ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const fatma_essam()));
                  },
                  child: const Text(
                    "Fatma Essam ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const mariam_taher()));
                  },
                  child: const Text(
                    "Mariam Taher",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const mariam_taher()));
                  },
                  child: const Text(
                    "Morad Mahmoud",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const naglaa_ahmed()));
                  },
                  child: const Text(
                    "Naglaa Ahmed ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const osama_nabil()));
                  },
                  child: const Text(
                    "Osama Nabil",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const saif_ahmed()));
                  },
                  child: const Text(
                    "Saif Ahmed ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const youssef_hossam()));
                  },
                  child: const Text(
                    "Youssef Hossameldin  ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
