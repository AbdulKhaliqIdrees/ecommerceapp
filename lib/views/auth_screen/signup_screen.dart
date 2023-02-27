import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/consts/firebase_const.dart';
import 'package:ecommerceapp/controller/auth_controller.dart';
import 'package:ecommerceapp/views/home_screen/home.dart';
import 'package:ecommerceapp/widgets/app_logo.dart';
import 'package:ecommerceapp/widgets/back_ground_widget.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:ecommerceapp/widgets/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? ischeck = false;
  var controller = Get.put(AuthController());
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var retypepasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
              "Join the $appname",
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
                        hint: nameHint,
                        tittle: name,
                        controller: namecontroller,
                        ispass: false,
                      ),
                      CoustomTextField(
                        hint: emailHint,
                        tittle: email,
                        controller: emailcontroller,
                        ispass: false,
                      ),
                      CoustomTextField(
                        hint: passwordHint,
                        tittle: password,
                        controller: passwordcontroller,
                        ispass: true,
                      ),
                      CoustomTextField(
                        hint: passwordHint,
                        tittle: retypepassword,
                        controller: retypepasswordcontroller,
                        ispass: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(forgetpassword)),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor: redColor,
                              checkColor: whiteColor,
                              value: ischeck,
                              onChanged: (newValue) {
                                setState(() {
                                  ischeck = newValue;
                                });
                              }),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: termsandconditions,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor,
                                  ),
                                ),
                                TextSpan(
                                  text: " & ",
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: fontGrey,
                                  ),
                                ),
                                TextSpan(
                                  text: privacypolicy,
                                  style: TextStyle(
                                    fontFamily: regular,
                                    color: redColor,
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ],
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
                                  tittle: signup,
                                  color: ischeck == true ? redColor : lightGrey,
                                  textcolor: whiteColor,
                                  onpressed: () async {
                                    if (ischeck != false)
                                    // ignore: curly_braces_in_flow_control_structures
                                    {
                                      controller.isloading(true);
                                      try {
                                        await controller
                                            .signupMethod(
                                          email: emailcontroller.text,
                                          password: passwordcontroller.text,
                                          context: context,
                                        )
                                            .then((value) {
                                          return controller.storeUserDAta(
                                            name: namecontroller.text,
                                            email: emailcontroller.text,
                                            password: passwordcontroller.text,
                                          );
                                        }).then((value) {
                                          VxToast.show(context, msg: loggedin);
                                          Get.offAll(() => const Home());
                                        });
                                      } catch (e) {
                                        auth.signOut();
                                        VxToast.show(context,
                                            msg: e.toString());
                                        controller.isloading(false);
                                      }
                                    }
                                  },
                                )),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: alreadyhaveanaccount,
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              ),
                            ),
                            TextSpan(
                              text: login,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              ),
                            ),
                          ]),
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
