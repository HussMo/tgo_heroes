import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:test_app/Home_visitors.dart';

class welcome_page extends StatefulWidget {
  const welcome_page({Key? key}) : super(key: key);

  @override
  _welcome_pageState createState() => _welcome_pageState();
}

class _welcome_pageState extends State<welcome_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/Welcome.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: AnimatedTextKit(
                  pause: Duration(milliseconds: 50),
                  animatedTexts: [
                    FadeAnimatedText('Welcome',
                        textStyle: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    FadeAnimatedText('To',
                        textStyle: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    FadeAnimatedText('Dispatching',
                        textStyle: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    FadeAnimatedText('Performance View',
                        textStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ]),
            ),
            Column(
              children: [
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VerticalCardPagerExample()));
                      },
                      child: Text(
                        'Go to the home page',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      )),
                ),
                Center(
                  child: IconButton(
                      iconSize: 40,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => VerticalCardPagerExample()));
                      },
                      icon: Icon(Icons.double_arrow_outlined)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
