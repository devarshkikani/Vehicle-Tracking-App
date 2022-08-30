import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/auth/sign_up.dart';
import 'package:vehicletracking/pages/subscribed/slot_details_screen.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_comman_widget.dart';

import '../../utils/app_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // var height = Get.height;
    // var width = Get.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // width: width,
          // height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAsset.bgGroundTop,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Image.asset(
                AppAsset.loginImage,
              ),
              customHeight(49),
              const Text(
                "LogIn",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              customHeight(6),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Welcome Back, We are Glad to See You Again!",
                  style: TextStyle(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
              ),
              customHeight(47),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Account Number*',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              customHeight(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Password Here..",
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              customHeight(13),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?")),
              ),
              height25,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: AppFillButton(
                  onTap: () {
                    Get.to(() => const SlotDetailsScreen());
                  },
                  title: "Log In",
                ),
              ),
              height20,
              appRichText("Don’t have an account?  ", "SignUp",
                  onTap: () async {
                Get.to(() => const SignUpScreen());
              })
            ],
          ),
        ),
      ),
      // Container(
      //   width: width,
      //   height: height,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage(
      //           AppAsset.bgGroundTop,
      //         ),
      //         fit: BoxFit.fill),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 30.0),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         const AppTextField(
      //           labelText: "Name",
      //           hintText: "xuzabd",
      //         ),
      //         height25,
      //         AppFillButton(
      //           onTap: () {
      //             print("object");
      //           },
      //           title: "Log In",
      //         ),
      //         height20,
      //         appRichText("Don’t have an account?  ", "SignUp",
      //             onTap: () async {
      //           print("object --> Sign Up");
      //           Get.to(() => const SignUpScreen());
      //         })
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            AppAsset.bottomLine,
            // height: 70.0,
            width: double.infinity,
          ),
          customHeight(35.0),
        ],
      ),
    );
  }
}
