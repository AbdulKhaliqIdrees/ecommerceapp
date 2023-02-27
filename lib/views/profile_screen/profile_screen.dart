import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/list.dart';
import 'package:ecommerceapp/controller/auth_controller.dart';
import 'package:ecommerceapp/views/auth_screen/login_screen.dart';
import 'package:ecommerceapp/widgets/account_button.dart';
import 'package:ecommerceapp/widgets/back_ground_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return BackGround(
      SafeArea(
          child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.edit,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage(
                      imgProfile2,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Khaliq User",
                          style: TextStyle(
                            fontFamily: semibold,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "khaliqidrees51@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: whiteColor),
                    ),
                    onPressed: () async {
                      await
                          //Get.put(AuthController())
                          controller.signoutMethod(context: context);
                      Get.offAll(() => const LoginScreen());
                    },
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                        fontFamily: semibold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const AccountButton("in your cart", "00"),
                const AccountButton("in your wishlist", "22"),
                const AccountButton("your orders", "632"),
              ],
            ),
            Container(
              color: Colors.red,
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: textfieldGrey,
                        spreadRadius: 1,
                        //offset: Offset(4.0, 4.0),
                      ),
                    ]),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (contex, index) {
                      return ListTile(
                        leading: Image.asset(
                          profileiconlist[index],
                          width: 22,
                        ),
                        title: Text(
                          profilestringlist[index],
                          style: const TextStyle(
                            fontFamily: semibold,
                            color: darkFontGrey,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: darkFontGrey,
                        indent: 12,
                        endIndent: 12,
                        thickness: 0.11,
                      );
                    },
                    itemCount: profilestringlist.length),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
