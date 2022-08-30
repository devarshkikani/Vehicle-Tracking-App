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
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAsset.bgThemeTop), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 250,
                      width: Get.width,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppAsset.changePassword))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                          height05,
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Must be atleast 6 Characters',
                              style: AppTextStyle.normalRegular14
                                  .copyWith(color: greyColor),
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
                          customHeight(50),
                          AppFillButton(
                            title: "Next".toUpperCase(),
                            onTap: () {},
                            radius: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back_rounded,
                        color: blackColor,
                      ),
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
