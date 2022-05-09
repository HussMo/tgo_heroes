import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_app/Drawer.dart';
import 'package:test_app/Drawer2.dart';

class VerticalCardPagerExample extends StatefulWidget {
  const VerticalCardPagerExample({Key? key}) : super(key: key);

  @override
  _VerticalCardPagerExampleState createState() =>
      _VerticalCardPagerExampleState();
}

class _VerticalCardPagerExampleState extends State<VerticalCardPagerExample> {
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
      child: Image.asset("images/Karim.png"),
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
      child: Image.asset("images/Aly.png"),
    ),
  ];

  final List<String> titles = ['', '', '', '', '', ''];

  int ci = 0;
  int Index = 1;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Menuscreen(),
      mainScreen: MainScreen(),
      angle: -5,
      duration: Duration(milliseconds: 800),
      borderRadius: 50,
      slideWidth: MediaQuery.of(context).size.width * 0.8,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.blue,
    );
  }
}
