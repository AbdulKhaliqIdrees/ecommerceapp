import 'package:ecommerceapp/consts/consts.dart';
import 'package:ecommerceapp/views/auth_screen/login_screen.dart';
import 'package:ecommerceapp/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      /*auth.authStateChanges().listen((User? user) {
        if (user == null && mounted) {
          //Get.to(const LoginScreen());
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const LoginScreen();
          }));
        } else {
          //Get.to(const HomeScreen());
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HomeScreen();
          }));
        }
      });*/
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              icSplashBg,
              width: 300,
              alignment: Alignment.topLeft,
            ),
            const SizedBox(
              height: 20,
            ),
            Applogo(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              appname,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              appversion,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            const Text(
              credits,
              style: TextStyle(
                fontFamily: semibold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
