import 'package:flutter/material.dart';

class myInput extends StatelessWidget {
  myInput(
      {required this.nameHint,
      required this.nameLabel,
      required this.userSign});
  String nameHint;
  String nameLabel;
  var userSign;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      child: TextField(
        onChanged: (value) {
          userSign = value;
        },
        decoration: InputDecoration(
          label: Text(nameLabel),
          hintText: nameHint,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2)),
        ),
      ),
    );
  }
}
