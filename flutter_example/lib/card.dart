import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({required this.link, required this.icon});
  final String link;
  final String icon;

  @override
  _CardViewState createState() => _CardViewState(link, icon);
}

class _CardViewState extends State<CardView> {
  _CardViewState(this.link, this.icon);
  final String link;
  final String icon;
  List<BoxShadow> shadowList = [
    BoxShadow(
        color: Color.fromARGB(255, 236, 233, 233),
        blurRadius: 30,
        offset: Offset(0, 10))
  ];
  @override
  Widget build(BuildContext context) {
    final witdh = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return Container(
      height: 240,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: shadowList,
                  ),
                  margin: EdgeInsets.only(top: 90),
                ),
                Align(
                  child: Image.asset(
                    icon,
                    height: 240,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            height: 200,
            margin: EdgeInsets.only(top: 110, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadowList,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  link,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
