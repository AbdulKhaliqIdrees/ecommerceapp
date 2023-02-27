import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget Applogo() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    width: 77,
    height: 77,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(icAppLogo),
    ),
  );
}
