// ignore_for_file: unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';

class Popular_Titled extends StatelessWidget {
  const Popular_Titled({
    Key? key, required this.titled,
  }) : super(key: key);

  final String titled;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(top: 20 * 2, left: 20 * 2),
        child: Text(
          "$titled",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 26
          ),
        ),
      ),
    );
  }
}
