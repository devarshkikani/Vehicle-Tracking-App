import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/auth/login.dart';
import 'package:vehicletracking/pages/auth/set_password.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_comman_widget.dart';
import 'package:vehicletracking/widgets/app_text_form_field.dart';

import '../../utils/app_assets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppAsset.bgGroundTop,
              ),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                height15,
                const Text(
                  "Let’s Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                customHeight(3.0),
                const Text(
                  "Create an account to get all features ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                height20,
                const AppTextField(
                  labelText: "First Name",
                ),
                height15,
                const AppTextField(
                  labelText: "Last Name",
                ),
                height15,
                const AppTextField(
                  labelText: "Company Name",
                ),
                height15,
                const AppTextField(
                  labelText: "Company Address",
                ),
                height15,
                const AppTextField(
                  labelText: "Mobile Number",
                ),
                height15,
                const AppTextField(
                  labelText: "Whatsapp Number",
                ),
                height15,
                const AppTextField(
                  labelText: "Email Address",
                ),
                height15,
                const AppTextField(
                  labelText: "TRN (Tax Registration Number)",
                ),
                height15,
                AppFillButton(
                    title: "Next".toUpperCase(),
                    onTap: () {
                      Get.to(() => const SetPassword());
                    }),
                height15,
                appRichText("Already have an account?  ", "LogIn", onTap: () {
                  Get.offAll(() => const LoginScreen());
                }),
                height20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
