import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/auth/login.dart';
import 'package:vehicletracking/pages/settings/change_password_screen.dart';
import 'package:vehicletracking/pages/settings/edit_profile_screen.dart';
import 'package:vehicletracking/pages/settings/history_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
              height: Get.height,
              width: Get.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAsset.seetingBackground),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: whiteColor,
                        width: 5,
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 4),
                            image: const DecorationImage(
                                image: AssetImage(AppAsset.maskgroup),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: whiteColor),
                            child: const Center(
                              child: Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  height10,
                  Text(
                    'Mansi N V',
                    style: AppTextStyle.normalSemiBold16
                        .copyWith(color: whiteColor),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  commonRow(
                      ontap: () {
                        Get.to(() => const EditProfileScreen());
                      },
                      icon: AppAsset.person,
                      text: 'Edit Profile'),
                  height15,
                  const Divider(
                    color: greyColor,
                  ),
                  height10,
                  commonRow(
                      ontap: () {
                        Get.to(() => const ChangePasswordScreen());
                      },
                      icon: AppAsset.password,
                      text: 'Change Password'),
                  height15,
                  const Divider(
                    color: greyColor,
                  ),
                  height10,
                  commonRow(
                      ontap: () {
                        Get.to(() => const HistoryScreen());
                      },
                      icon: AppAsset.history,
                      text: 'History'),
                  height15,
                  const Divider(
                    color: greyColor,
                  ),
                  height10,
                  commonRow(
                    ontap: () {
                      Get.to(() => const LoginScreen());
                    },
                    icon: AppAsset.logout,
                    text: 'Log Out',
                    isShowIcon: true,
                  ),
                  height15,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget commonRow({
    required Function() ontap,
    required String icon,
    required String text,
    bool? isShowIcon,
  }) {
    return InkWell(
      onTap: ontap,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: blackColor.withOpacity(0.25),
                  spreadRadius: -1,
                ),
              ],
              color: whiteColor,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Image.asset(icon),
              ),
            ),
          ),
          // Material(
          //   elevation: 5,
          //   shadowColor: greyColor,
          //   borderRadius: BorderRadius.circular(50),
          //   child: Container(
          //     height: 50,
          //     width: 50,
          //     decoration: const BoxDecoration(
          //         shape: BoxShape.circle, color: whiteColor),
          //     child: Center(
          //       child: Padding(
          //         padding: const EdgeInsets.all(13.0),
          //         child: Image.asset(icon),
          //       ),
          //     ),
          //   ),
          // ),
          width20,
          Text(
            text,
            style: AppTextStyle.normalRegular14,
          ),
          const Spacer(),
          if (isShowIcon != true)
            const Icon(
              Icons.arrow_forward_ios,
              color: greyColor,
              size: 20,
            )
        ],
      ),
    );
  }
}
