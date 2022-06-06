import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:test_app/slider.dart';

import 'Home_visitors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int _current = 0;
  dynamic _selectedIndex = {};
  CarouselController _carouselController = new CarouselController();

  final List<dynamic> _products = [
    {
      'title': 'Vareen Farhad',
      'image': 'images/Karim.png',
      'description': 'Dispatcher'
    },
    {
      'title': 'Muhammed Mansour',
      'image': 'images/Aly.png',
      'description': 'Dispatcher'
    },
    {
      'title': 'Taghreed Mostafa',
      'image': 'images/Amr.png',
      'description': 'Dispatcher'
    },
    {
      'title': 'Hesham Mohamed',
      'image': 'images/Hala.png',
      'description': 'Dispatcher'
    }
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
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('images/Home_screen.png'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.7,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: _products.map((movie) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_selectedIndex == movie) {
                            _selectedIndex = {};
                          } else {
                            _selectedIndex = movie;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: _selectedIndex == movie
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: _selectedIndex == movie
                                ? [
                                    BoxShadow(
                                        color: Colors.blue.shade100,
                                        blurRadius: 30,
                                        offset: Offset(0, 10))
                                  ]
                                : [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 20,
                                        offset: Offset(0, 5))
                                  ]),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                width: MediaQuery.of(context).size.width,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(movie['image'],
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                movie['title'],
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                movie['description'],
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList()),
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
