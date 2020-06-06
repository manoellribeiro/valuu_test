import 'package:flutter/material.dart';

class HomeTabWidget extends StatelessWidget {

  final String title;
  final Color color;
  final Color textColor;

  const HomeTabWidget({Key key, this.title, this.color, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 30,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: textColor,
                fontFamily: "QuickSand",
                fontSize: 16
                ),
              )),
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
        ),
      ),
    );
  }
}