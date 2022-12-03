import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/not_subscribed/subscription_screen.dart';
import 'package:vehicletracking/pages/settings/setting_screen.dart';
import 'package:vehicletracking/pages/subscribed/go_to_your_subcription_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class SlotDetailsScreen extends StatefulWidget {
  final bool isSubscribed;
  const SlotDetailsScreen({Key? key, required this.isSubscribed})
      : super(key: key);

  @override
  State<SlotDetailsScreen> createState() => _SlotDetailsScreenState();
}

class _SlotDetailsScreenState extends State<SlotDetailsScreen> {
  List<String> items = ["Surat", "Mumbai", "Kolkata", "Delhi"];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // alignment: AlignmentDirectional.bottomCenter,
        children: [
          Image.asset(
            AppAsset.bgGroundTop,
            width: Get.width,
            fit: BoxFit.fitWidth,
            // height: Get.height,
          ),
          Image.asset(
            AppAsset.logInImage3,
            width: Get.width,
            fit: BoxFit.fitWidth,
            // height: Get.height,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            height15,
                            welcomeWidget(),
                            height15,
                            availableSlotsWidget(),
                            height15,
                            montlySubscriptionWidget(),
                            height15,
                            descriptionWidget(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
      bottomNavigationBar: button(),
    );
  }

  Widget welcomeWidget() {
    return Container(
      width: Get.width,
      height: 120,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Welcome, User!',
            style: AppTextStyle.normalSemiBold20,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                child: DropdownButton<String>(
                  value: selectedItem,
                  isExpanded: true,
                  hint: Text(
                    'Location...',
                    style: AppTextStyle.normalRegular14.copyWith(
                      color: greyColor,
                    ),
                  ),
                  underline: const SizedBox(),
                  onChanged: (value) {
                    setState(() {
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
            ],
          ),
        ],
      ),
    );
  }

  Widget availableSlotsWidget() {
    return Container(
      width: Get.width,
      height: 110,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Available Parking Slots',
            style: AppTextStyle.normalRegular14.copyWith(
              color: greyColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Get.width / 2 - 32,
                child: Row(
                  children: [
                    Image.asset(
                      AppAsset.motorCycle,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '17',
                      style: AppTextStyle.normalRegular16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: Get.width / 2 - 32,
                child: Row(
                  children: [
                    Image.asset(
                      AppAsset.car,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      '07',
                      style: AppTextStyle.normalRegular16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget montlySubscriptionWidget() {
    return Container(
      width: Get.width,
      height: 85,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Current monthly Subscription',
            style: AppTextStyle.normalRegular14.copyWith(
              color: greyColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.isSubscribed == true ? '1' : 'Not Subscribed yet',
            style: AppTextStyle.normalRegular16,
          ),
        ],
      ),
    );
  }

  Widget descriptionWidget() {
    return Container(
      width: Get.width,
      height: 130,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            maxLines: 3,
            style: AppTextStyle.normalRegular14.copyWith(
              color: blackColor,
            ),
            decoration: InputDecoration(
              hintText: 'Description',
              hintStyle: AppTextStyle.normalRegular14.copyWith(
                color: greyColor,
              ),
              border: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppFillButton(
            onTap: () {
              Get.to(() => widget.isSubscribed == true
                  ? const GotoYourSubscriptionScreen()
                  : const SubScriptionScreen());
            },
            title: widget.isSubscribed == true
                ? 'Go to Your Subscription'
                : 'Subscribe Now',
            width: Get.width,
            height: 50,
            radius: 10,
          ),
          if (widget.isSubscribed == true) height15,
          if (widget.isSubscribed == true)
            AppBorderButton(
              onTap: () {
                Get.to(() => const SettingScreen());
              },
              title: 'Add Another Subscription ',
              width: Get.width,
              height: 50,
              radius: 10,
            ),
        ],
      ),
    );
  }
}
