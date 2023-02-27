import 'package:ecommerceapp/consts/consts.dart';
import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  const AccountButton(this.tittle, this.count, {Key? key}) : super(key: key);
  final String tittle;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      height: 70,
      width: MediaQuery.of(context).size.width / 3.4,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            count,
            style: const TextStyle(fontFamily: semibold, fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            tittle,
            style: const TextStyle(fontFamily: semibold),
          ),
        ],
      ),
    );
  }
}
