import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class ChoosePlanScreen extends StatefulWidget {
  const ChoosePlanScreen({Key? key}) : super(key: key);

  @override
  State<ChoosePlanScreen> createState() => _ChoosePlanScreenState();
}

class _ChoosePlanScreenState extends State<ChoosePlanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    // height: 250,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.choosePlan),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.topCenter),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 150),
                              width: 350,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          AppAsset.paymentbackground),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  height10,
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: whiteColor.withOpacity(0.14),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Text(
                                      'Silver',
                                      style: AppTextStyle.normalRegular14
                                          .copyWith(color: greyColor),
                                    ),
                                  ),
                                  height10,
                                  Text(
                                    '6000/-',
                                    style: AppTextStyle.normalSemiBold20
                                        .copyWith(
                                            fontSize: 30, color: appColor),
                                  ),
                                  height10,
                                  Text(
                                    'Monthly',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(color: greyColor),
                                  ),
                                  customHeight(50),
                                  Text(
                                    'All Parking Services',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'Subscription Features will show here',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'Features will show here',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'All Parking Services',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  customHeight(50),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30),
                                    child: AppFillButton(
                                      onTap: () {},
                                      title: "Add Access Control",
                                    ),
                                  ),
                                  height25,
                                ],
                              ),
                            ),
                            Positioned(
                              top: Get.height / 2.8,
                              left: -20,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: appColor),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: Get.height / 2.8,
                              right: -20,
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: appColor),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -30,
                              child: Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(color: blackColor),
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Center(
                                  child: Text(
                                    'Select',
                                    style: AppTextStyle.normalSemiBold16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                customHeight(100),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: AppFillButton(
                    radius: 10,
                    onTap: () {},
                    title: "Check Out",
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                height10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back_ios_new),
                    Text(
                      'Choose Plan',
                      style:
                          AppTextStyle.normalSemiBold8.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
