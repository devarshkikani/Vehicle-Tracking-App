import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/widgets/app_button.dart';
import 'package:vehicletracking/widgets/app_text_form_field.dart';

class SubscriptionDetailsScreen extends StatefulWidget {
  const SubscriptionDetailsScreen({Key? key}) : super(key: key);

  @override
  State<SubscriptionDetailsScreen> createState() =>
      _SubscriptionDetailsScreenState();
}

class _SubscriptionDetailsScreenState extends State<SubscriptionDetailsScreen> {
  TextEditingController parkingTypeController = TextEditingController();
  TextEditingController parkingNumberController = TextEditingController();
  TextEditingController startingDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController autoRenewwal = TextEditingController();
  TextEditingController accessControlsController = TextEditingController();

  List<String> controlsList = ['Camera', 'Camera', 'Camera'];
  String selectedValue = 'Camera';

  RxBool isReserved = true.obs;
  RxBool isYearly = true.obs;
  RxBool isAutoRenewal = true.obs;
  RxBool isTermAgree = false.obs;

  RxInt changeAccessControlSelected = 0.obs;
  List<String> changeAccessControlList = [
    'Access Card',
    'Mobile',
    'ANPR Camera',
    'Remote Control',
    'QR Code'
  ];

  Future<String> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
      return '${picked.day}/${picked.month}/${picked.year}';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  AppAsset.subscriptionDetails,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 300.0, left: 15, right: 15),
                  child: Column(
                    children: <Widget>[
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Details',
                          style: AppTextStyle.bold20,
                        ),
                      ),
                      height15,
                      ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(
                          height: 15,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) =>
                            subscriptionDetailsWidget(),
                      ),
                      // height15,
                      // bottomButtons(),
                      // height15,
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
                    color: whiteColor,
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
          GestureDetector(
            onTap: () {
              Get.to(() => const SubscriptionDetailsScreen());
            },
            child: GestureDetector(
              onTap: () {
                showEditDialog();
              },
              child: Container(
                height: 50,
                width: Get.width,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1',
                      style: AppTextStyle.normalRegular16.copyWith(
                        color: whiteColor,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(AppAsset.editIcon),
                        width05,
                        Text(
                          'Edit',
                          style: AppTextStyle.normalSemiBold16.copyWith(
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
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
                        'Parking Type',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        controller: parkingTypeController,
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
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        controller: parkingNumberController,
                        keyboardType: TextInputType.number,
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
                        'Starting Date',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        controller: startingDateController,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                        ),
                        onTap: () async {
                          startingDateController.text =
                              await _selectDate(context);
                          setState(() {});
                        },
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
                        'Ending Date',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        controller: endDateController,
                        keyboardType: TextInputType.number,
                        onTap: () async {
                          endDateController.text = await _selectDate(context);
                        },
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
                        'Auto Renewal',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: TextFormField(
                        textAlign: TextAlign.end,
                        controller: autoRenewwal,
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
                        'Access Controls',
                        style: AppTextStyle.normalSemiBold16.copyWith(
                          color: greyColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 3,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: DropdownButton<String>(
                          hint: selectedValue == ''
                              ? const Text(
                                  'Camera',
                                  style: AppTextStyle.normalRegular16,
                                )
                              : Text(
                                  selectedValue,
                                  style: AppTextStyle.normalRegular16,
                                ),
                          items: controlsList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: selectedValue,
                              child: Text(
                                value,
                                style: AppTextStyle.normalRegular16,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            selectedValue = newValue ?? '';
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          height10,
        ],
      ),
    );
  }

  void showEditDialog() {
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
              parkingType(),
              height15,
              changeContractPeriod(),
              height15,
              changeAutoRenewal(),
              height15,
              const Text(
                'Change Access Control',
                style: AppTextStyle.normalSemiBold16,
              ),
              const Divider(
                color: borderGreyColor,
              ),
              changeAccessControl(),
              height15,
              feedBack(),
              height25,
              bottomButtons(),
              height15,
            ],
          ),
        );
      },
    );
  }

  Widget parkingType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Change Parking Type',
          style: AppTextStyle.normalSemiBold16,
        ),
        const Divider(
          color: borderGreyColor,
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Reserved Parking',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: true,
              groupValue: isReserved.value,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              onChanged: (value) {
                setState(() {
                  isReserved.value = value as bool;
                });
              })),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Open Parking',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: false,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              groupValue: isReserved.value,
              onChanged: (value) {
                setState(() {
                  isReserved.value = value as bool;
                });
              })),
        ),
      ],
    );
  }

  Widget changeContractPeriod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Change Contract Period',
          style: AppTextStyle.normalSemiBold16,
        ),
        const Divider(
          color: borderGreyColor,
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Yearly',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: true,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              groupValue: isYearly.value,
              onChanged: (value) {
                setState(() {
                  isYearly.value = value as bool;
                });
              })),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Montly',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: false,
              groupValue: isYearly.value,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              onChanged: (value) {
                setState(() {
                  isYearly.value = value as bool;
                });
              })),
        ),
      ],
    );
  }

  Widget changeAutoRenewal() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Change Auto Renewal',
          style: AppTextStyle.normalSemiBold16,
        ),
        const Divider(
          color: borderGreyColor,
        ),
        height10,
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'Yes',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: true,
              groupValue: isAutoRenewal.value,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              onChanged: (value) {
                setState(() {
                  isAutoRenewal.value = value as bool;
                });
              })),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          dense: true,
          title: Text(
            'No',
            style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
          ),
          trailing: Obx(() => Radio(
              value: false,
              groupValue: isAutoRenewal.value,
              fillColor: MaterialStateProperty.all(appColor),
              activeColor: appColor,
              onChanged: (value) {
                setState(() {
                  isAutoRenewal.value = value as bool;
                });
              })),
        ),
        height10,
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
        )
      ],
    );
  }

  Widget changeAccessControl() {
    return Wrap(
      runAlignment: WrapAlignment.spaceBetween,
      children: List.generate(
        changeAccessControlList.length,
        (index) => SizedBox(
          width: 155,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                changeAccessControlList[index],
                style: AppTextStyle.normalRegular14.copyWith(color: greyColor),
              ),
              Obx(() => Checkbox(
                    value: changeAccessControlSelected.value == index,
                    fillColor: MaterialStateProperty.all(appColor),
                    activeColor: appColor,
                    onChanged: (bool? value) {
                      changeAccessControlSelected.value = index;
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget feedBack() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderGreyColor,
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Column(
        children: [
          Container(
            color: const Color(0xffF3F3F3),
            padding: const EdgeInsets.all(15),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Feedback/Suggestion/Complaint',
                  style: AppTextStyle.normalSemiBold16,
                ),
                height10,
                Text(
                  'Complaint/Suggestions about this parking. Report a lost/damage/manifactioning of this access control.',
                  style:
                      AppTextStyle.normalRegular16.copyWith(color: greyColor),
                ),
              ],
            ),
          ),
          const ExpansionTile(
            title: Text(
              'Give Suggestion',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                  'description',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget bottomButtons() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: AppBorderButton(
                title: 'No, Go Back',
                radius: 10,
                onTap: () {},
              ),
            ),
            width05,
            Expanded(
              child: AppFillButton(
                title: 'Save Changes',
                radius: 10,
                onTap: () {
                  submitPopup();
                },
              ),
            ),
          ],
        ),
        height15,
        AppBorderButton(
          title: 'Cancel this Parking',
          radius: 10,
          onTap: () {},
        ),
      ],
    );
  }

  void submitPopup() {
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
                hintText: 'Subject',
                hintStyle:
                    AppTextStyle.normalRegular16.copyWith(color: greyColor),
              ),
              height20,
              AppTextField(
                hintText: 'Write your meesage here....',
                hintStyle:
                    AppTextStyle.normalRegular16.copyWith(color: greyColor),
                maxLines: 5,
                textAlign: TextAlign.start,
              ),
              height20,
              AppFillButton(
                title: 'Submit',
                radius: 10,
                onTap: () {},
              ),
              height10,
            ],
          ),
        );
      },
    );
  }

  void submitePopup() {
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
                hintText: 'Subject',
                hintStyle:
                    AppTextStyle.normalRegular16.copyWith(color: greyColor),
              ),
              height20,
              AppTextField(
                hintText: 'Write your meesage here....',
                hintStyle:
                    AppTextStyle.normalRegular16.copyWith(color: greyColor),
                maxLines: 5,
                textAlign: TextAlign.start,
              ),
              height20,
              AppFillButton(
                title: 'Submit',
                radius: 10,
                onTap: () {},
              ),
              height10,
            ],
          ),
        );
      },
    );
  }
}
