import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_app/slider.dart';

import 'Home_visitors.dart';

class buttom_nav_bar extends StatefulWidget {
  const buttom_nav_bar({Key? key}) : super(key: key);

  @override
  State<buttom_nav_bar> createState() => _buttom_nav_barState();
}

class _buttom_nav_barState extends State<buttom_nav_bar> {
  int Index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
      index: Index,
      animationDuration: const Duration(milliseconds: 400),
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: Colors.teal,
      items: [
        InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProductCard()));
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
