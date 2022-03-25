import 'package:flutter/material.dart';
import 'package:flutter_example/card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final icon = [
    "assets/images/github.png",
    "assets/images/facebook.png",
    "assets/images/stackOverflow.png",
  ];
  final link = [
    "github.com/otis-eng",
    "github.com/otis-eng",
    "github.com/otis-eng",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: icon.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  child: CardView(link: link[index], icon: icon[index]));
            }));
  }
}
