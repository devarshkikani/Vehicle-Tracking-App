import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/splash_screen.dart';
import '/utils/app_assets.dart';
import '/utils/app_colors.dart';

class VehicleTrackApp extends StatefulWidget {
  const VehicleTrackApp({Key? key}) : super(key: key);

  @override
  State<VehicleTrackApp> createState() => _VehicleTrackAppState();
}

class _VehicleTrackAppState extends State<VehicleTrackApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
            primarySwatch: appMaterialColor, fontFamily: AppAsset.fontFamily),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen());
  }
}
