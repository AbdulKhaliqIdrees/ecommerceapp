import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CoustomTextField({String? hint, String? tittle, controller, ispass}) {
  return Column(
    // ignore: prefer_const_literals_to_create_immutables
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        tittle!,
        style: const TextStyle(
          fontSize: 16,
          color: redColor,
          fontFamily: semibold,
        ),
      ),
      const SizedBox(
        height: 2,
      ),
      TextFormField(
        obscureText: ispass,
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: redColor,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
    ],
  );
}
