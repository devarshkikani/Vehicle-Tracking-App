import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 100),
                height: Get.height / 1.7,
                child: GridView.builder(
                    itemCount: parkingList.length,
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
                          Container(
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
              customHeight(70),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AppFillButton(
                  title: "Next".toUpperCase(),
                  onTap: () {},
                  radius: 10,
                ),
              ),
            ],
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
                      'Parking Slot',
                      style:
                          AppTextStyle.normalSemiBold8.copyWith(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
                height20,
                const Divider(
                  color: greyColor,
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
