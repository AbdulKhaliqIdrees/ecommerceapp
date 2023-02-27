import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(
        child: Text(
          "Cart is Empty!",
          style: TextStyle(
            fontFamily: semibold,
            color: darkFontGrey,
          ),
        ),
      ),
    );
  }
}
