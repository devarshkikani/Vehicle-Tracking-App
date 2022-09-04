import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/settings/edit_profile_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              AppAsset.changePassword,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 340),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              Get.to(() => const EditProfileScreen());
                            },
                            child: Text(
                              'Change Password',
                              style: AppTextStyle.normalSemiBold8
                                  .copyWith(fontSize: 20),
                            ),
                          ),
                        ),
                        height10,
                        Text(
                          'Your new password must be different from previously used passwords.',
                          style: AppTextStyle.normalRegular14
                              .copyWith(color: greyColor),
                        ),
                        height25,
                        TextField(
                          controller: newPasswordController,
                          decoration: InputDecoration(
                            labelText: 'Create New Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: greyColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: appColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.visibility_off,
                                color: blackColor,
                              ),
                            ),
                          ),
                        ),
                        height25,
                        TextField(
                          controller: confirmPasswordController,
                          decoration: InputDecoration(
                            labelText: 'Confirm New Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: greyColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: appColor),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.visibility_outlined,
                                color: greyColor,
                              ),
                            ),
                          ),
                        ),
                        height25,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppFillButton(
              title: 'Reset password',
              onTap: () {
                Get.back();
              },
              radius: 10,
            ),
          ],
        ),
      ),
    );
  }
}
