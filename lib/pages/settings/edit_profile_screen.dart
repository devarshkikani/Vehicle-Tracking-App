import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehicletracking/utils/app_assets.dart';
import 'package:vehicletracking/utils/app_static_decoration.dart';
import 'package:vehicletracking/utils/app_text_style.dart';
import 'package:vehicletracking/utils/text_form_field.dart';
import 'package:vehicletracking/widgets/app_button.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController companyAddressController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController whatsappNumberController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController trnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              AppAsset.editProfile,
              width: Get.width,
              height: Get.height,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 290.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Edit Profile',
                            style: AppTextStyle.normalSemiBold8
                                .copyWith(fontSize: 20),
                          ),
                        ),
                        height10,
                        newTextFormFiled(
                          controller: firstNameController,
                          labelText: 'First Name*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: lastNameController,
                          labelText: 'Last Name*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: companyNameController,
                          labelText: 'Company Name*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: companyAddressController,
                          labelText: 'Company Address*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: mobileNumberController,
                          labelText: 'Mobile Number*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: whatsappNumberController,
                          labelText: 'Whatsapp Number*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: emailAddressController,
                          labelText: 'E-mail Address*',
                        ),
                        height25,
                        newTextFormFiled(
                          controller: mobileNumberController,
                          labelText: 'TRN (Not Mandatory)',
                        ),
                        customHeight(50),
                        AppFillButton(
                          title: "Save",
                          onTap: () {
                            Get.back();
                          },
                          radius: 10,
                        ),
                        height15,
                      ],
                    ),
                  ),
                ],
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
    );
  }
}
