import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/list.dart';
import 'package:ecommerceapp/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetail extends StatelessWidget {
  final String? tittle;
  const ItemDetail(this.tittle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          tittle!,
          style: const TextStyle(
            fontFamily: semibold,
            color: darkFontGrey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: darkFontGrey,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        itemCount: 3,
                        height: 350,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      tittle!,
                      style: const TextStyle(
                        color: darkFontGrey,
                        fontSize: 18,
                        fontFamily: bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "\$30,000",
                      style: TextStyle(
                          fontSize: 18, fontFamily: bold, color: redColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      color: textfieldGrey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    "Seller",
                                    style: TextStyle(
                                      fontFamily: semibold,
                                      color: whiteColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "In House Brands",
                                    style: TextStyle(
                                      fontFamily: semibold,
                                      color: darkFontGrey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.message_rounded,
                                color: darkFontGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                          const BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: textfieldGrey,
                          spreadRadius: 1,
                          //offset: Offset(4.0, 4.0),
                        ),
                      ]),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    "Color: ",
                                    style: TextStyle(
                                      color: textfieldGrey,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: List.generate(
                                  3,
                                  (index) => Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      color: colorss[index],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    "Quantity: ",
                                    style: TextStyle(
                                      color: textfieldGrey,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.remove)),
                                  const Text(
                                    "0",
                                    style: TextStyle(
                                      fontFamily: bold,
                                      color: darkFontGrey,
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add)),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "(0 available)",
                                style: TextStyle(
                                  color: textfieldGrey,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 100,
                                  child: Text(
                                    "Total: ",
                                    style: TextStyle(
                                      color: textfieldGrey,
                                    ),
                                  ),
                                ),
                              ),
                              const Text(
                                "\$0.000",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontFamily: bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: semibold,
                        color: darkFontGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "This is item and Description of item here...",
                      style: TextStyle(
                        color: darkFontGrey,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // ignore: prefer_const_constructors
                      children: List.generate(
                          itemdetaillist.length,
                          // ignore: prefer_const_constructors
                          (index) => ListTile(
                                title: Text(
                                  itemdetaillist[index],
                                  style: const TextStyle(
                                    color: darkFontGrey,
                                    fontFamily: semibold,
                                  ),
                                ),
                                trailing: const Icon(Icons.arrow_forward),
                              )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Products you may also like",
                      style: TextStyle(
                        color: darkFontGrey,
                        fontFamily: semibold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          6,
                          (index) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP1,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Laptop 4GB/64GB",
                                    style: TextStyle(
                                      fontFamily: semibold,
                                      color: darkFontGrey,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "\$800",
                                    style: TextStyle(
                                      color: redColor,
                                      fontFamily: bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: OurButton(
              color: redColor,
              onpressed: () {},
              textcolor: whiteColor,
              tittle: "Add to Cart",
            ),
          ),
        ],
      ),
    );
  }
}
