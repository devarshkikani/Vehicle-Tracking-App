import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_comman_widget.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: whiteColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              AppAsset.resetPasswrod,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SafeArea(
                child: Column(
                  children: [
                    customHeight(400),
                    const Text(
                      'Reset Via Email',
                      style: AppTextStyle.bold20,
                    ),
                    height10,
                    Text(
                      'Enter the email associated with your account and we will send you a link to rest your password.',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.normalRegular14.copyWith(
                        color: greyColor,
                      ),
                    ),
                    height25,
                    TextFormField(
                      controller: emailController,
                      style: AppTextStyle.normalRegular16.copyWith(
                        color: blackColor,
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Your Email ID",
                        hintStyle: AppTextStyle.normalRegular16.copyWith(
                          color: greyColor,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 10),
                          child: Icon(
                            Icons.mail_outline_rounded,
                            color: borderGreyColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: borderGreyColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    height25,
                    AppFillButton(
                      title: 'Confirm',
                      onTap: () {},
                    ),
                    height25,
                    appRichText(
                      "Didn’t Receive the Link? ",
                      "Resend",
                      decoration: TextDecoration.underline,
                      onTap: () {},
                    ),
                    height25,
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
