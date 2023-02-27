import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget FeaturedButton({String? tittle, image}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),
    width: 200,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 40,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            tittle!,
            style: const TextStyle(fontFamily: semibold, color: darkFontGrey),
          ),
        ],
      ),
    ),
  );
}
