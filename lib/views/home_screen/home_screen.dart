import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/list.dart';
import 'package:ecommerceapp/views/home_screen/components/featured_button.dart';
import 'package:ecommerceapp/widgets/home_buttons.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: sliderslist.length,
                        itemBuilder: (context, index) {
                          // ignore: avoid_unnecessary_containers
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Image.asset(
                              sliderslist[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          2,
                          (index) => HomeButtons(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width / 2.5,
                                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                                tittle: index == 0 ? todaydeals : flashsale,
                              )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondsliderslist.length,
                        itemBuilder: (context, index) {
                          // ignore: avoid_unnecessary_containers
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Image.asset(
                              secondsliderslist[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => HomeButtons(
                                height:
                                    MediaQuery.of(context).size.height * 0.15,
                                width: MediaQuery.of(context).size.width / 3.5,
                                icon: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                tittle: index == 0
                                    ? topcategories
                                    : index == 1
                                        ? brands
                                        : topsellers,
                              )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        featuredcategories,
                        style: TextStyle(
                          fontFamily: semibold,
                          fontSize: 18,
                          color: darkFontGrey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              FeaturedButton(
                                  image: featuredimages1[index],
                                  tittle: featuredtittles1[index]),
                              const SizedBox(
                                height: 10,
                              ),
                              FeaturedButton(
                                image: featuredimages2[index],
                                tittle: featuredtittles2[index],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            featuredproducts,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: semibold,
                                color: Colors.white),
                          ),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                6,
                                (index) => Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                    const SizedBox(
                      height: 20,
                    ),
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondsliderslist.length,
                        itemBuilder: (context, index) {
                          // ignore: avoid_unnecessary_containers
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Image.asset(
                              secondsliderslist[index],
                              fit: BoxFit.fill,
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "All Products",
                          style: TextStyle(
                            fontFamily: semibold,
                            fontSize: 18,
                            color: darkFontGrey,
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300,
                      ),
                      itemBuilder: ((context, index) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  imgP5,
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                                const Spacer(),
                                const Text(
                                  "Women Hand Bag",
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
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
