import 'package:flutter/material.dart';

class headTitle extends StatelessWidget {
  headTitle({required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }
}
