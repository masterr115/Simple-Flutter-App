import 'package:flutter/material.dart';
import 'dart:async';

Future sleep3() {
  return new Future.delayed(const Duration(milliseconds: 500));
}

Future sleep2() {
  return new Future.delayed(const Duration(milliseconds: 300));
}

showAlertDialog(BuildContext context, text) {
  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    content: new Row(
      children: [
        CircularProgressIndicator(),
        Container(
            margin: EdgeInsets.only(left: 30.0, top: 5.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Text(
                  text,
                ),
              ],
            )),
      ],
    ),
  );

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
