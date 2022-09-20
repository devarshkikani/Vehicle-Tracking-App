import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/not_subscribed/parking_slot_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class SubScriptionScreen extends StatefulWidget {
  const SubScriptionScreen({Key? key}) : super(key: key);

  @override
  State<SubScriptionScreen> createState() => _SubScriptionScreenState();
}

class _SubScriptionScreenState extends State<SubScriptionScreen> {
  String? duration;
  String? location;
  String? vehicleType;
  String? typeOfSlot;
  String? qty;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
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
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 10,
                    top: 280,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Subscription',
                          style: AppTextStyle.bold20,
                        ),
                      ),
                      height15,
                      height15,
                      DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Duration*',
                                  style: AppTextStyle.normalRegular14
                                      .copyWith(color: greyColor, fontSize: 16),
                                ),
                              ),
                              suffixIcon: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: blackColor,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                            iconSize: 0.0,
                            hint: duration == null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text('Duration',
                                        style: AppTextStyle.normalRegular14
                                            .copyWith(color: greyColor)),
                                  )
                                : Text(
                                    duration.toString(),
                                    style: const TextStyle(color: blackColor),
                                  ),
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(30),
                            style: const TextStyle(color: blackColor),
                            items: [
                              "15 Days",
                              "1 Month",
                              "3 Month",
                              "6 Month",
                              "1 Year",
                            ].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                () {
                                  duration = val.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      height20,
                      DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Location*',
                                  style: AppTextStyle.normalRegular14
                                      .copyWith(color: greyColor, fontSize: 16),
                                ),
                              ),
                              suffixIcon: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: blackColor,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                            iconSize: 0.0,
                            hint: location == null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text('Location',
                                        style: AppTextStyle.normalRegular14
                                            .copyWith(color: greyColor)),
                                  )
                                : Text(
                                    location.toString(),
                                    style: const TextStyle(color: blackColor),
                                  ),
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(30),
                            style: const TextStyle(color: blackColor),
                            items: [
                              "Surat",
                              "Bharuch",
                              "Baroda",
                              "Mumbai",
                            ].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                () {
                                  location = val.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      height20,
                      DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Vehicle Type*',
                                  style: AppTextStyle.normalRegular14
                                      .copyWith(color: greyColor, fontSize: 16),
                                ),
                              ),
                              suffixIcon: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: blackColor,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                            iconSize: 0.0,
                            hint: vehicleType == null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text('Vehicle Type',
                                        style: AppTextStyle.normalRegular14
                                            .copyWith(color: greyColor)),
                                  )
                                : Text(
                                    vehicleType.toString(),
                                    style: const TextStyle(color: blackColor),
                                  ),
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(30),
                            style: const TextStyle(color: blackColor),
                            items: ['Two Wheel', 'Four Wheel'].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                () {
                                  vehicleType = val.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      height20,
                      DropdownButtonHideUnderline(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              label: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  'Type Of Slot*',
                                  style: AppTextStyle.normalRegular14
                                      .copyWith(color: greyColor, fontSize: 16),
                                ),
                              ),
                              suffixIcon: const Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: blackColor,
                                ),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                            iconSize: 0.0,
                            hint: typeOfSlot == null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text('Type Of Slot',
                                        style: AppTextStyle.normalRegular14
                                            .copyWith(color: greyColor)),
                                  )
                                : Text(
                                    typeOfSlot.toString(),
                                    style: const TextStyle(color: blackColor),
                                  ),
                            isExpanded: true,
                            borderRadius: BorderRadius.circular(30),
                            style: const TextStyle(color: blackColor),
                            items: ['Reserverd', 'Open'].map(
                              (val) {
                                return DropdownMenuItem<String>(
                                  value: val,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(val),
                                  ),
                                );
                              },
                            ).toList(),
                            onChanged: (val) {
                              setState(
                                () {
                                  typeOfSlot = val.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      height20,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            label: const Text('Slot Quantity*'),
                            contentPadding: const EdgeInsets.all(
                              20,
                            ),
                            hintText: 'Slot Quantity',
                            hintStyle: AppTextStyle.normalRegular14
                                .copyWith(color: greyColor),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      height20,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: AppFillButton(
                            title: "Next",
                            radius: 10,
                            onTap: () {
                              Get.to(
                                () => const ParkingSlotScreen(),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
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
      ),
    );
  }
}
