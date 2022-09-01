import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/not_subscribed/chosse_plan_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_text_form_field.dart';

class ParkingSlotScreen extends StatefulWidget {
  const ParkingSlotScreen({Key? key}) : super(key: key);

  @override
  State<ParkingSlotScreen> createState() => _ParkingSlotScreenState();
}

class _ParkingSlotScreenState extends State<ParkingSlotScreen> {
  List parkingList = [
    {'title': 'A1', 'image': AppAsset.bike, 'status': 'Available'},
    {'title': 'A2', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 'A3', 'image': AppAsset.newcar, 'status': 'Disabled'},
    {'title': 'A4', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 's1', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's2', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's3', 'image': AppAsset.bike, 'status': 'Reserved'},
    {'title': 's4', 'image': AppAsset.bike, 'status': 'Selected'},
    {'title': 'A1', 'image': AppAsset.bike, 'status': 'Available'},
    {'title': 'A2', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 'A3', 'image': AppAsset.newcar, 'status': 'Disabled'},
    {'title': 'A4', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 's1', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's2', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's3', 'image': AppAsset.bike, 'status': 'Reserved'},
    {'title': 's4', 'image': AppAsset.bike, 'status': 'Selected'},
    {'title': 'A1', 'image': AppAsset.bike, 'status': 'Available'},
    {'title': 'A2', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 'A3', 'image': AppAsset.newcar, 'status': 'Disabled'},
    {'title': 'A4', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 's1', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's2', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's3', 'image': AppAsset.bike, 'status': 'Reserved'},
    {'title': 's4', 'image': AppAsset.bike, 'status': 'Selected'},
    {'title': 'A1', 'image': AppAsset.bike, 'status': 'Available'},
    {'title': 'A2', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 'A3', 'image': AppAsset.newcar, 'status': 'Disabled'},
    {'title': 'A4', 'image': AppAsset.newcar, 'status': 'Reserved'},
    {'title': 's1', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's2', 'image': AppAsset.bike, 'status': 'Disabled'},
    {'title': 's3', 'image': AppAsset.bike, 'status': 'Reserved'},
    {'title': 's4', 'image': AppAsset.bike, 'status': 'Selected'},
  ];

  TextEditingController vehicleNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: blackColor,
          ),
        ),
        title: Text(
          'Parking Slot',
          style: AppTextStyle.normalSemiBold8.copyWith(fontSize: 18),
        ),
      ),
      body: Container(
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
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 22.0,
                right: 22.0,
                top: 120,
              ),
              child: Divider(
                height: 2,
                color: borderGreyColor,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: Get.height / 1.7,
                      alignment: Alignment.topCenter,
                      child: GridView.builder(
                          itemCount: parkingList.length,
                          // shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            Color color;
                            switch (parkingList[index]['status']) {
                              case 'Selected':
                                color = appColor;
                                break;
                              case 'Reserved':
                                color = greyColor;
                                break;
                              case 'Disabled':
                                color = greyColor.withOpacity(0.2);
                                break;
                              default:
                                color = greenColor;
                            }

                            return Column(
                              children: [
                                Text(parkingList[index]['title']),
                                height05,
                                GestureDetector(
                                  onTap: () {
                                    showAddDialog();
                                  },
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        parkingList[index]['image'],
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          }),
                    ),
                    height25,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: greyColor,
                              ),
                            ),
                            width05,
                            const Text('Reserved')
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: appColor,
                              ),
                            ),
                            width05,
                            const Text('Selected')
                          ],
                        )
                      ],
                    ),
                    height25,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: greenColor,
                              ),
                            ),
                            width05,
                            const Text('Available')
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: greyColor.withOpacity(0.2),
                              ),
                            ),
                            width05,
                            const Text('Disabled')
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: AppFillButton(
                        title: "Next",
                        onTap: () {},
                        radius: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAddDialog() {
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
              AppTextField(
                labelText: 'Vehicle Number',
                controller: vehicleNumber,
              ),
              height15,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Icon(
                    Icons.add,
                    color: appColor,
                  ),
                  Text(
                    'Add More',
                    style: AppTextStyle.normalSemiBold16.copyWith(
                      color: appColor,
                    ),
                  ),
                ],
              ),
              height15,
              Row(
                children: [
                  Expanded(
                    child: AppBorderButton(
                      onTap: () {
                        Get.back();
                      },
                      title: 'Back',
                      radius: 10,
                    ),
                  ),
                  width10,
                  Expanded(
                    child: AppFillButton(
                      onTap: () {
                        Get.to(const ChoosePlanScreen());
                      },
                      title: 'Next',
                      radius: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
