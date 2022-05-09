import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_app/slider.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import 'Home_visitors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  final List<Widget> images = [
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset("images/Mahmoud.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset("images/Amr.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset(
        "images/Karim.png",
        width: 200,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset("images/Hala.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset("images/Hany.png"),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset(
        "images/Aly.png",
      ),
    ),
  ];

  final List<String> titles = ['', '', '', '', '', ''];

  int ci = 0;
  int Index = 1;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.toggle();
              },
              icon: Icon(Icons.menu)),
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'Dispatchers Newsletter',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         Navigator.of(context).push(
          //             MaterialPageRoute(builder: (context) => welcome_page()));
          //       },
          //       icon: Icon((Icons.arrow_back))),
          // ],
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('images/Home_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: VerticalCardPager(
                images: images,
                titles: titles,
                onPageChanged: (page) {},
                onSelectedItem: (index) {},
              )),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          index: Index,
          animationDuration: const Duration(milliseconds: 400),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.teal,
          items: [
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductCard()));
                },
                child: const Icon((Icons.addchart_sharp))),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const VerticalCardPagerExample()));
                },
                child: const Icon((Icons.home))),
          ],
        ));
  }
}
