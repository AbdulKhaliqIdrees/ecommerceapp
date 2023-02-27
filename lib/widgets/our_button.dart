import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget OurButton({
  onpressed,
  String? tittle,
  color,
  textcolor,
}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: onpressed,
      child: Text(
        tittle!,
        style: TextStyle(fontFamily: bold, color: textcolor),
      ));
}
