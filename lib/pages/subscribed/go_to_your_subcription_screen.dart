import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/payment/payment_screen.dart';
import 'package:vehicletracking/pages/subscribed/subscription_details.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class GotoYourSubscriptionScreen extends StatefulWidget {
  const GotoYourSubscriptionScreen({Key? key}) : super(key: key);

  @override
  State<GotoYourSubscriptionScreen> createState() =>
      _GotoYourSubscriptionScreenState();
}

class _GotoYourSubscriptionScreenState
    extends State<GotoYourSubscriptionScreen> {
  RxBool isTermAgree = false.obs;
  RxBool isAutoRenewal = true.obs;

  List<String> items = ["Camera", "Phone", "Image", "Video"];
  String selectedItem = "Camera";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      height: Get.height,
                      width: Get.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppAsset.bgGroundTop,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Image.asset(
                      AppAsset.subscriptionTopImage,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 300.0, left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Subscription Details',
                          style: AppTextStyle.bold20,
                        ),
                      ),
                      height15,
                      subscriptionDetailsWidget(),
                      height15,
                      bottomButtons(),
                      height15,
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_rounded,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget subscriptionDetailsWidget() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                height10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
                      child: Text(
                        'Contract Date',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextField(
                        enabled: false,
                        style: AppTextStyle.normalRegular14,
                        controller: TextEditingController(text: '08/10/2022'),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                height25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
                      child: Text(
                        'Amount',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextField(
                        enabled: false,
                        style: AppTextStyle.normalRegular14,
                        controller: TextEditingController(text: '1000/-'),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                height25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
                      child: Text(
                        'Parking Number',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextField(
                        enabled: false,
                        style: AppTextStyle.normalRegular14,
                        controller: TextEditingController(text: 'B1-02'),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                height25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
                      child: Text(
                        'Slot Quantity',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextField(
                        enabled: false,
                        style: AppTextStyle.normalRegular14,
                        controller: TextEditingController(text: '1'),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                height25,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
                      child: Text(
                        'Location',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextField(
                        enabled: false,
                        style: AppTextStyle.normalRegular14,
                        controller: TextEditingController(text: 'A'),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                      ),
                    ),
                  ],
                ),
                height25,
                slotAddOrRemoveButtons(),
              ],
            ),
          ),
          height10,
          GestureDetector(
            onTap: () {
              Get.to(() => const SubscriptionDetailsScreen());
            },
            child: Container(
              height: 50,
              width: Get.width,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                'View Details',
                style: AppTextStyle.normalRegular16.copyWith(
                  color: whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget slotAddOrRemoveButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: Get.width / 2.5,
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: blackColor,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.remove,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Remove Slot',
                  style: AppTextStyle.normalRegular16.copyWith(
                      // fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            renewalPopup();
          },
          child: Container(
            width: Get.width / 2.5,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: blackColor,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.add,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Add Slot',
                  style: AppTextStyle.normalRegular16.copyWith(
                      // fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomButtons() {
    return Row(
      children: [
        Expanded(
          child: AppFillButton(
            title: 'Renew',
            radius: 15,
            height: 50,
            onTap: () {
              renewalPopup();
            },
          ),
        ),
        width15,
        Expanded(
          child: AppBorderButton(
            title: 'Cancel',
            height: 50,
            radius: 15,
            onTap: () {
              cancelPopup();
            },
          ),
        ),
      ],
    );
  }

  void cancelPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 16,
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            children: <Widget>[
              const Text(
                'Are you sure you want to Cancel your Current Subscription?',
                textAlign: TextAlign.center,
                style: AppTextStyle.normalSemiBold16,
              ),
              height20,
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: isTermAgree.value,
                      fillColor: MaterialStateProperty.all(appColor),
                      activeColor: appColor,
                      onChanged: (bool? value) {
                        isTermAgree.value = value ?? false;
                      },
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I Agree to the ',
                          style: AppTextStyle.normalRegular16.copyWith(
                            color: greyColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: AppTextStyle.normalRegular16.copyWith(
                            color: appColor,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              height20,
              Row(
                children: [
                  Expanded(
                    child: AppBorderButton(
                      title: 'No, Go Back',
                      radius: 10,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                  width05,
                  Expanded(
                    child: AppFillButton(
                      title: 'Yes, I’m Sure',
                      radius: 10,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              height10,
            ],
          ),
        );
      },
    );
  }

  void renewalPopup() {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, state) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 16,
              insetPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: ListView(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFAFAFA),
                      border: Border.all(
                        color: greyColor,
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: selectedItem,
                      isExpanded: true,
                      underline: const SizedBox(),
                      onChanged: (value) {
                        state(() {
                          selectedItem = value!;
                        });
                      },
                      items: items
                          .map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  height20,
                  const Text(
                    'Auto Renewal',
                    style: AppTextStyle.normalSemiBold16,
                  ),
                  const Divider(
                    color: borderGreyColor,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          title: Text(
                            'Yes',
                            style: AppTextStyle.normalRegular14
                                .copyWith(color: greyColor),
                          ),
                          trailing: Obx(() => Radio(
                              value: true,
                              groupValue: isAutoRenewal.value,
                              fillColor: MaterialStateProperty.all(appColor),
                              activeColor: appColor,
                              onChanged: (value) {
                                isAutoRenewal.value = value as bool;
                                setState(() {});
                              })),
                        ),
                      ),
                      width10,
                      SizedBox(
                        width: 100,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          title: Text(
                            'No',
                            style: AppTextStyle.normalRegular14
                                .copyWith(color: greyColor),
                          ),
                          trailing: Obx(
                            () => Radio(
                              value: false,
                              groupValue: isAutoRenewal.value,
                              fillColor: MaterialStateProperty.all(appColor),
                              activeColor: appColor,
                              onChanged: (value) {
                                setState(() {
                                  isAutoRenewal.value = value as bool;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  height10,
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          isTermAgree.value = !isTermAgree.value;
                        },
                        child: Obx(
                          () => isTermAgree.value
                              ? Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: appColor,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: appColor),
                                  ),
                                  child: const Icon(
                                    Icons.check_rounded,
                                    color: whiteColor,
                                    size: 18,
                                  ),
                                )
                              : Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: appColor),
                                  ),
                                ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'I Agree to the ',
                              style: AppTextStyle.normalRegular16.copyWith(
                                color: greyColor,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: AppTextStyle.normalRegular16.copyWith(
                                color: appColor,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  height20,
                  Row(
                    children: [
                      Expanded(
                        child: AppBorderButton(
                          title: 'Cancel',
                          height: 45,
                          radius: 10,
                          onTap: () {
                            Get.back();
                          },
                        ),
                      ),
                      width15,
                      Expanded(
                        child: AppFillButton(
                          title: 'Proceed',
                          radius: 10,
                          height: 45,
                          onTap: () {
                            Get.to(() => const PaymentScreen());
                          },
                        ),
                      ),
                    ],
                  ),
                  height10,
                ],
              ),
            );
          },
        );
      },
    );
  }
}
