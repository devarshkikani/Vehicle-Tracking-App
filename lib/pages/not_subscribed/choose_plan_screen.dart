import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/pages/order/order_summary_screen.dart';
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
  PageController controller = PageController();
  RxInt selectedIndex = 0.obs;
  RxBool commonCheckboxValue = false.obs;
  RxInt accessControlsCount = 2.obs;
  RxBool accessControlsAdded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAsset.choosePlan),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 70),
                              width: 340,
                              height: 450,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image:
                                        AssetImage(AppAsset.paymentbackground),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  height20,
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
                                  height20,
                                  Text(
                                    '600/-',
                                    style: AppTextStyle.normalSemiBold20
                                        .copyWith(
                                            fontSize: 35, color: appColor),
                                  ),
                                  height10,
                                  Text(
                                    'Monthly',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(color: greyColor),
                                  ),
                                  if (accessControlsAdded.value) height20,
                                  if (accessControlsAdded.value)
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: const BoxDecoration(
                                            color: appColor,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.add_rounded,
                                            color: whiteColor,
                                            size: 16,
                                          ),
                                        ),
                                        width15,
                                        Text(
                                          '2 Access Controls Added',
                                          style: AppTextStyle.normalSemiBold14
                                              .copyWith(
                                            color: whiteColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  customHeight(30),
                                  Text(
                                    'All Parking Services',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'Subscription Features will show here',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'Features will show here',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  height05,
                                  Text(
                                    'All Parking Services',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(
                                            color: greyColor, fontSize: 16),
                                  ),
                                  customHeight(50),
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        showAddDialog();
                                      },
                                      child: Obx(
                                        () => Container(
                                          height: 50,
                                          width: 200,
                                          decoration: BoxDecoration(
                                            color: accessControlsAdded.value
                                                ? null
                                                : appColor,
                                            border: Border.all(
                                              color: accessControlsAdded.value
                                                  ? appColor
                                                  : Colors.transparent,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Add Access Controls',
                                              style: AppTextStyle
                                                  .normalSemiBold16
                                                  .copyWith(
                                                color: whiteColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  height15,
                                ],
                              ),

                              // child: PageView.builder(
                              //   itemCount: 2,
                              //   controller: controller,
                              //   onPageChanged: (index) {
                              //     selectedIndex.value = index;
                              //     setState(() {});
                              //   },
                              //   itemBuilder:
                              //       (BuildContext context, int index) =>
                              //           <Widget>[
                              //     Column(
                              //       mainAxisSize: MainAxisSize.min,
                              //       crossAxisAlignment:
                              //           CrossAxisAlignment.center,
                              //       children: [
                              //         height20,
                              //         Container(
                              //           padding: const EdgeInsets.symmetric(
                              //               horizontal: 20, vertical: 5),
                              //           decoration: BoxDecoration(
                              //               color: whiteColor.withOpacity(0.14),
                              //               borderRadius:
                              //                   BorderRadius.circular(30)),
                              //           child: Text(
                              //             'Gold',
                              //             style: AppTextStyle.normalRegular14
                              //                 .copyWith(color: greyColor),
                              //           ),
                              //         ),
                              //         height20,
                              //         Text(
                              //           '4000/-',
                              //           style: AppTextStyle.normalSemiBold20
                              //               .copyWith(
                              //                   fontSize: 35, color: appColor),
                              //         ),
                              //         height10,
                              //         Text(
                              //           'Yearly',
                              //           style: AppTextStyle.normalRegular14
                              //               .copyWith(color: greyColor),
                              //         ),
                              //         if (accessControlsAdded.value) height20,
                              //         if (accessControlsAdded.value)
                              //           Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.center,
                              //             children: [
                              //               Container(
                              //                 height: 18,
                              //                 width: 18,
                              //                 decoration: const BoxDecoration(
                              //                   color: appColor,
                              //                   shape: BoxShape.circle,
                              //                 ),
                              //                 child: const Icon(
                              //                   Icons.add_rounded,
                              //                   color: whiteColor,
                              //                   size: 16,
                              //                 ),
                              //               ),
                              //               width15,
                              //               Text(
                              //                 '2 Access Controls Added',
                              //                 style: AppTextStyle
                              //                     .normalSemiBold14
                              //                     .copyWith(
                              //                   color: whiteColor,
                              //                 ),
                              //               ),
                              //             ],
                              //           ),
                              //         customHeight(30),
                              //         Text(
                              //           'All Parking Services',
                              //           style: AppTextStyle.normalRegular14
                              //               .copyWith(
                              //                   color: greyColor, fontSize: 16),
                              //         ),
                              //         height05,
                              //         Text(
                              //           'Subscription Features will show here',
                              //           style: AppTextStyle.normalRegular14
                              //               .copyWith(
                              //                   color: greyColor, fontSize: 16),
                              //         ),
                              //         height05,
                              //         Text(
                              //           'Features will show here',
                              //           style: AppTextStyle.normalRegular14
                              //               .copyWith(
                              //                   color: greyColor, fontSize: 16),
                              //         ),
                              //         height05,
                              //         Text(
                              //           'All Parking Services',
                              //           style: AppTextStyle.normalRegular14
                              //               .copyWith(
                              //                   color: greyColor, fontSize: 16),
                              //         ),
                              //         customHeight(50),
                              //         Center(
                              //           child: GestureDetector(
                              //             onTap: () {
                              //               showAddDialog();
                              //             },
                              //             child: Obx(
                              //               () => Container(
                              //                 height: 50,
                              //                 width: 200,
                              //                 decoration: BoxDecoration(
                              //                   color: accessControlsAdded.value
                              //                       ? null
                              //                       : appColor,
                              //                   border: Border.all(
                              //                     color:
                              //                         accessControlsAdded.value
                              //                             ? appColor
                              //                             : Colors.transparent,
                              //                   ),
                              //                   borderRadius:
                              //                       BorderRadius.circular(30),
                              //                 ),
                              //                 child: Center(
                              //                   child: Text(
                              //                     'Add Access Controls',
                              //                     style: AppTextStyle
                              //                         .normalSemiBold16
                              //                         .copyWith(
                              //                       color: whiteColor,
                              //                     ),
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           ),
                              //         ),
                              //         height15,
                              //       ],
                              //     ),
                              //   ][index],
                              // ),
                            ),
                            // if (selectedIndex.value > 0)
                            //   Positioned(
                            //     bottom: 230,
                            //     left: -20,
                            //     child: InkWell(
                            //       onTap: previousPage,
                            //       child: Container(
                            //         height: 40,
                            //         width: 40,
                            //         decoration: const BoxDecoration(
                            //             shape: BoxShape.circle,
                            //             color: appColor),
                            //         child: const Center(
                            //           child: Icon(
                            //             Icons.arrow_back_ios_rounded,
                            //             color: whiteColor,
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // if (selectedIndex.value <= 0)
                            //   Positioned(
                            //     bottom: 230,
                            //     right: -20,
                            //     child: InkWell(
                            //       onTap: nextPage,
                            //       child: Container(
                            //         height: 40,
                            //         width: 40,
                            //         decoration: const BoxDecoration(
                            //             shape: BoxShape.circle,
                            //             color: appColor),
                            //         child: const Center(
                            //           child: Icon(
                            //             Icons.arrow_forward_ios_rounded,
                            //             color: whiteColor,
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            Positioned(
                              bottom: -20,
                              child: Obx(
                                () => Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: accessControlsAdded.value
                                          ? appColor
                                          : whiteColor,
                                      border: Border.all(
                                        color: blackColor,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                    child: Text(
                                      'Select',
                                      style: AppTextStyle.normalSemiBold16
                                          .copyWith(
                                        color: accessControlsAdded.value
                                            ? whiteColor
                                            : blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    customHeight(30),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: List.generate(
                    //     2,
                    //     (index) {
                    //       return Container(
                    //         height: 15,
                    //         width: 15,
                    //         margin: const EdgeInsets.symmetric(horizontal: 5),
                    //         decoration: BoxDecoration(
                    //           border: Border.all(
                    //             color: selectedIndex.value != index
                    //                 ? appColor
                    //                 : whiteColor,
                    //           ),
                    //           shape: BoxShape.circle,
                    //           color: selectedIndex.value == index
                    //               ? appColor
                    //               : whiteColor,
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    customHeight(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: AppFillButton(
                        radius: 10,
                        onTap: () {
                          Get.to(() => const OrderSummaryScreen());
                        },
                        title: "Check Out",
                      ),
                    ),
                    height20,
                  ],
                ),
              ),
            ),
          ),
          appBar(),
        ],
      ),
    );
  }

  Widget appBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                Text(
                  'Choose Plan',
                  style: AppTextStyle.normalSemiBold8.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  // void nextPage() {
  //   controller.nextPage(
  //     duration: const Duration(milliseconds: 400),
  //     curve: Curves.easeIn,
  //   );
  //   setState(() {});
  // }

  // void previousPage() {
  //   controller.previousPage(
  //     duration: const Duration(milliseconds: 400),
  //     curve: Curves.easeIn,
  //   );
  //   setState(() {});
  // }

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
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -20,
                right: 0,
                left: 0,
                child: Center(
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: appColor,
                      border: Border.all(color: whiteColor),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Add Access Controls',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    tableColumn(),
                    const Divider(
                      color: borderGreyColor,
                    ),
                    height10,
                    SizedBox(
                      height: 200,
                      child: tableDataListView(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppBorderButton(
                            title: 'Back',
                            radius: 10,
                            height: 45,
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                        width10,
                        Expanded(
                          child: AppFillButton(
                            title: 'Add',
                            height: 45,
                            radius: 10,
                            onTap: () {
                              accessControlsAdded.value = true;
                              Get.back();
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget tableColumn() {
    return Row(
      children: [
        const SizedBox(
          width: 50,
        ),
        Expanded(
          child: Text(
            'Accessories',
            textAlign: TextAlign.center,
            style: AppTextStyle.normalSemiBold14.copyWith(color: greyColor),
          ),
        ),
        Expanded(
          child: Text(
            'Deposite',
            textAlign: TextAlign.center,
            style: AppTextStyle.normalSemiBold14.copyWith(color: greyColor),
          ),
        ),
        Expanded(
          child: Text(
            'Refunded Amount',
            textAlign: TextAlign.center,
            style: AppTextStyle.normalSemiBold14.copyWith(color: greyColor),
          ),
        ),
      ],
    );
  }

  Widget tableDataListView() {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            tableData(),
            height10,
            const Divider(
              color: borderGreyColor,
            ),
            height10,
          ],
        );
      },
    );
  }

  Widget tableData() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Checkbox(
                  value: commonCheckboxValue.value,
                  activeColor: appColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  fillColor: MaterialStateProperty.resolveWith<Color>((states) {
                    return appColor;
                  }),
                  onChanged: (bool? value) {
                    commonCheckboxValue.value = value ?? false;
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              SvgPicture.asset(
                AppAsset.cameraIcon,
              ),
              width05,
              const Text(
                'Camera',
                textAlign: TextAlign.center,
                style: AppTextStyle.normalSemiBold14,
              ),
            ],
          ),
        ),
        const Expanded(
          child: Text(
            '200/-',
            textAlign: TextAlign.center,
            style: AppTextStyle.normalSemiBold14,
          ),
        ),
        const Expanded(
          child: Text(
            '200/-',
            textAlign: TextAlign.center,
            style: AppTextStyle.normalSemiBold14,
          ),
        ),
      ],
    );
  }
}
