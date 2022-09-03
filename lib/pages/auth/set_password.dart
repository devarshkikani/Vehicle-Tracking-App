import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/auth/login.dart';
import 'package:vehicletracking/pages/subscribed/slot_details_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_comman_widget.dart';
import 'package:vehicletracking/widgets/app_text_form_field.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  TextEditingController createController = TextEditingController();
  TextEditingController reEnterController = TextEditingController();
  RxBool createObscureText = true.obs;
  RxBool reEnterObscureText = true.obs;
  RxBool agreeTerm = false.obs;
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
            color: blackColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              AppAsset.setPassword,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: <Widget>[
                  customHeight(350),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        const Text(
                          'Set Password',
                          textAlign: TextAlign.end,
                          style: AppTextStyle.bold20,
                        ),
                        Text(
                          'Create password to keep your account safe',
                          textAlign: TextAlign.end,
                          style: AppTextStyle.normalRegular14
                              .copyWith(color: greyColor),
                        ),
                        customHeight(40),
                        Obx(
                          () => AppTextField(
                            labelText: "Create Password",
                            controller: createController,
                            obscureText: createObscureText.value,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                createObscureText.value =
                                    !createObscureText.value;
                              },
                              child: Icon(
                                createObscureText.value
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                        ),
                        height25,
                        Obx(
                          () => AppTextField(
                            labelText: 'Re-enter Password',
                            controller: reEnterController,
                            obscureText: reEnterObscureText.value,
                            suffixIcon: GestureDetector(
                              onTap: () {
                                reEnterObscureText.value =
                                    !reEnterObscureText.value;
                              },
                              child: Icon(
                                reEnterObscureText.value
                                    ? Icons.remove_red_eye_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                            ),
                          ),
                        ),
                        height25,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() => Checkbox(
                                  value: agreeTerm.value,
                                  onChanged: (bool? value) {
                                    agreeTerm.value = value ?? false;
                                  },
                                )),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'By continuing, you agree to our ',
                                      style:
                                          AppTextStyle.normalRegular14.copyWith(
                                        color: greyColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Terms and Conditions ',
                                      style:
                                          AppTextStyle.normalRegular14.copyWith(
                                        color: appColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'and ',
                                      style:
                                          AppTextStyle.normalRegular14.copyWith(
                                        color: greyColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style:
                                          AppTextStyle.normalRegular14.copyWith(
                                        color: appColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        height25,
                        AppFillButton(
                          title: 'Create Account',
                          radius: 15,
                          onTap: () {
                            Get.offAll(() => const SlotDetailsScreen(
                                  isSubscribed: false,
                                ));
                          },
                        ),
                        height20,
                        Align(
                          alignment: Alignment.center,
                          child: appRichText(
                            "Already have an account?  ",
                            "LogIn",
                            decoration: TextDecoration.underline,
                            onTap: () {
                              Get.offAll(
                                () => const LoginScreen(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
