import 'package:flutter/material.dart';

const Color appColor = Color(0xffC72027);
const Color whiteColor = Color(0xffffffff);
const Color blackColor = Color(0xff000000);
const Color greenColor = Color(0xFF00FF62);
const Color greyColor = Color(0xff8B8A8A);
const Color containerGrey = Color(0xff303030);
const Color borderGreyColor = Color(0xffD9D9D9);

Map<int, Color> colorMap = {
  50: Color.fromRGBO(199, 32, 39, .1),
  100: Color.fromRGBO(199, 32, 39, .2),
  200: Color.fromRGBO(199, 32, 39, .3),
  300: Color.fromRGBO(199, 32, 39, .4),
  400: Color.fromRGBO(199, 32, 39, .5),
  500: Color.fromRGBO(199, 32, 39, .6),
  600: Color.fromRGBO(199, 32, 39, .7),
  700: Color.fromRGBO(199, 32, 39, .8),
  800: Color.fromRGBO(199, 32, 39, .9),
  900: Color.fromRGBO(199, 32, 39, 1),
};
MaterialColor appMaterialColor = MaterialColor(0xffC72027, colorMap);
