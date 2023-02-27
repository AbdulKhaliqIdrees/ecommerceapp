import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/list.dart';
import 'package:ecommerceapp/controller/auth_controller.dart';
import 'package:ecommerceapp/views/auth_screen/signup_screen.dart';
import 'package:ecommerceapp/views/home_screen/home.dart';
import 'package:ecommerceapp/widgets/app_logo.dart';
import 'package:ecommerceapp/widgets/back_ground_widget.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:ecommerceapp/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    return BackGround(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Applogo(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Log into $appname",
              style: TextStyle(
                fontFamily: bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1,
                      color: Colors.grey //offset: Offset(4.0, 4.0)
                      ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Obx(
                  () => Column(
                    children: [
                      CoustomTextField(
                        hint: emailHint,
                        tittle: email,
                        ispass: false,
                        controller: controller.emailcontroller,
                      ),
                      CoustomTextField(
                        hint: passwordHint,
                        tittle: password,
                        ispass: true,
                        controller: controller.passwordcontroller,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(forgetpassword)),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: controller.isloading.value
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(redColor),
                                  ),
                                )
                              : OurButton(
                                  tittle: login,
                                  color: redColor,
                                  textcolor: whiteColor,
                                  onpressed: () async {
                                    controller.isloading(true);
                                    await controller
                                        .loginMethod(context: context)
                                        .then((value) {
                                      if (value != null) {
                                        VxToast.show(context, msg: loggedin);
                                        Get.offAll(() => const Home());
                                      } else {
                                        controller.isloading(false);
                                      }
                                    });
                                  },
                                )),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        createanewaccount,
                        style: TextStyle(
                          color: fontGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                          width: MediaQuery.of(context).size.width - 50,
                          child: OurButton(
                            tittle: signup,
                            color: lightgolden,
                            textcolor: redColor,
                            onpressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const SignUpScreen();
                              }));
                            },
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        loginwith,
                        style: TextStyle(
                          color: fontGrey,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: lightGrey,
                              radius: 25,
                              child: Image.asset(
                                socialIconlist[index],
                                width: 30,
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
          ]),
        ),
      ),
    );
  }
}
