// ignore_for_file: avoid_renaming_method_parameters

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_colors.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/utils/text_form_field.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expiryController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  TextEditingController nameOnCardController = TextEditingController();
  bool isCardSave = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Payment Options',
          style: AppTextStyle.normalSemiBold16.copyWith(color: whiteColor),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAsset.paymentbackground), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add a New Credit/Debit Card',
                    style: AppTextStyle.normalRegular14
                        .copyWith(color: whiteColor),
                  ),
                  height25,
                  cardContainer(
                      icon: AppAsset.creditCard,
                      text: 'Credit Card',
                      onTap: () {
                        bottomSheet();
                      }),
                  height25,
                  cardContainer(
                      icon: AppAsset.debitCard,
                      text: 'Debit Card',
                      onTap: () {
                        bottomSheet();
                      }),
                  customHeight(40),
                  Text(
                    'Saved Cards',
                    style: AppTextStyle.normalRegular14
                        .copyWith(color: whiteColor),
                  ),
                  height25,
                  paymentContainer(
                    icon: AppAsset.visa,
                    text: 'VisaCard',
                    onTap: () {
                      bottomSheet();
                    },
                  ),
                  height25,
                  paymentContainer(
                    icon: AppAsset.masterCard,
                    text: 'MasterCard',
                    onTap: () {
                      bottomSheet();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future bottomSheet() {
    return showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      height25,
                      Text('Card Number',
                          style: AppTextStyle.normalRegular14
                              .copyWith(fontSize: 16)),
                      height10,
                      newTextFormFiled(
                          inputFormatter: [
                            FilteringTextInputFormatter.digitsOnly,
                            CardNumberFormatter(),
                          ],
                          maxLength: 19,
                          labelText: '',
                          controller: cardNumberController,
                          borderColor: containerGrey),
                      height15,
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Expiry Date',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(fontSize: 16)),
                                height10,
                                newTextFormFiled(
                                    labelText: '',
                                    controller: expiryController,
                                    borderColor: containerGrey),
                              ],
                            ),
                          ),
                          width15,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('CVV',
                                    style: AppTextStyle.normalRegular14
                                        .copyWith(fontSize: 16)),
                                height10,
                                newTextFormFiled(
                                    labelText: '',
                                    controller: cvvController,
                                    borderColor: containerGrey),
                              ],
                            ),
                          ),
                        ],
                      ),
                      height15,
                      Text('Name on Card',
                          style: AppTextStyle.normalRegular14
                              .copyWith(fontSize: 16)),
                      height10,
                      newTextFormFiled(
                          labelText: '',
                          controller: nameOnCardController,
                          borderColor: containerGrey),
                      height20,
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              isCardSave = !isCardSave;
                              setState(() {});
                            },
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isCardSave == true
                                      ? containerGrey
                                      : whiteColor,
                                  border: Border.all(color: containerGrey)),
                            ),
                          ),
                          width15,
                          const Text(
                            'Save this card for Future payments',
                            style: AppTextStyle.normalRegular14,
                          ),
                        ],
                      ),
                      height25,
                      AppFillButton(
                        onTap: () {
                          Get.back();
                        },
                        title: "Next",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Widget cardContainer(
      {required String icon, required String text, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 84,
        decoration: BoxDecoration(
            color: containerGrey, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              height: 41,
              width: 41,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.asset(icon),
            ),
            width15,
            Text(
              text,
              style: AppTextStyle.normalRegular14.copyWith(color: whiteColor),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_down,
              color: whiteColor,
            )
          ],
        ),
      ),
    );
  }

  Widget paymentContainer(
      {required String icon, required String text, void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 84,
        decoration: BoxDecoration(
            color: containerGrey, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: 65,
              width: 65,
            ),
            width15,
            text == 'VisaCard'
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        style: AppTextStyle.normalRegular14
                            .copyWith(color: whiteColor),
                      ),
                      height05,
                      Text('***********',
                          style: AppTextStyle.normalRegular14
                              .copyWith(color: greyColor))
                    ],
                  )
                : Text(
                    text,
                    style: AppTextStyle.normalRegular14
                        .copyWith(color: whiteColor),
                  ),
            const Spacer(),
            const Icon(
              Icons.more_vert,
              color: whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
