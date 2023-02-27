import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BackGround(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
      image:
          DecorationImage(image: AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child: child,
  );
}
