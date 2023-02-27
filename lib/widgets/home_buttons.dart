import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget HomeButtons({icon, String? tittle, height, width, onpressed}) {
  // ignore: avoid_unnecessary_containers
  return Container(
    height: height,
    width: width,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          width: 26,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          tittle!,
          style: const TextStyle(
            fontFamily: semibold,
            color: darkFontGrey,
          ),
        ),
      ],
    ),
  );
}
