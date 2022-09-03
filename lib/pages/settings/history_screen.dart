import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/settings/change_password_screen.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List historyTransction = [
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
    {
      'Date': '21/07/2022',
      'Time': '6 MOnth',
      'Price': '4000/-',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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
          'History',
          style: AppTextStyle.normalSemiBold8.copyWith(fontSize: 20),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              AppAsset.bgThemeTop,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.builder(
                  itemCount: historyTransction.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => const ChangePasswordScreen());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      historyTransction[index]['Date'],
                                      style: AppTextStyle.normalSemiBold16,
                                    ),
                                    height05,
                                    Text(
                                      historyTransction[index]['Time'],
                                      style: AppTextStyle.normalRegular14
                                          .copyWith(color: greyColor),
                                    )
                                  ],
                                ),
                                Text(
                                  historyTransction[index]['Price'],
                                  style: AppTextStyle.normalSemiBold8
                                      .copyWith(fontSize: 16),
                                )
                              ],
                            ),
                            height10,
                            const Divider(
                              color: greyColor,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
