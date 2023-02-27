import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/controller/home_controller.dart';
import 'package:ecommerceapp/views/cart_screen/cart_screen.dart';
import 'package:ecommerceapp/views/categories_screen/categories.dart';
import 'package:ecommerceapp/views/home_screen/home_screen.dart';
import 'package:ecommerceapp/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homecontroller = Get.put(HomeController());
    var navbaritem = [
      BottomNavigationBarItem(
        icon: Image.asset(
          icHome,
          width: 26,
        ),
        label: home,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCategories,
          width: 26,
        ),
        label: categories,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icCart,
          width: 26,
        ),
        label: cart,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          icProfile,
          width: 26,
        ),
        label: account,
      ),
    ];
    var navbody = [
      const HomeScreen(),
      const CategoriesScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
        body: Column(
          children: [
            Obx((() => Expanded(
                child:
                    navbody.elementAt(homecontroller.currentnavindex.value)))),
          ],
        ),
        bottomNavigationBar: Obx((() => BottomNavigationBar(
              currentIndex: homecontroller.currentnavindex.value,
              // ignore: prefer_const_constructors
              selectedLabelStyle: TextStyle(
                fontFamily: bold,
              ),
              selectedItemColor: redColor,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              items: navbaritem,
              onTap: (newvalue) {
                homecontroller.currentnavindex.value = newvalue;
              },
            ))));
  }
}
