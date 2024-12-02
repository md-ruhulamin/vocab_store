import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class DesktopResponsive {
  double w = 1600;
  double h = 725;

  DesktopResponsive(double x, double y) {
    w = x;
    h = y;
  }

  double get screenHeight => h;
  double get screenWidth => w;
  double get headingfontsize => screenWidth / 55;
  double get subheadingfontsize => screenWidth / 65;
  double get detailsfontsize => screenWidth / 90;
  double get carddetailsfontsize => screenWidth / 90;
  double get Pagesize => screenWidth/3;
  double get w100 => screenWidth / 16;
  double get w50 => screenWidth / 32;
  double get w40 => screenWidth / 40;
  double get w30 => screenWidth / 53.34;
  double get w20 => screenWidth / 80;
  double get w15 => screenWidth / 106.67;
  double get w10 => screenWidth / 160;
  double get w5 => screenWidth / 320;
  double get w25 => screenWidth / 64;
  double get w18 => screenWidth / 88.88;
  double get w13 => screenWidth / 123.07;
  double get w17 => screenWidth / 94.11;

  double get font20 => screenWidth / 80;
  double get font17 => screenWidth / 100;
  double get font25 => screenWidth / 64;
  double get font13 => screenWidth / 126;
  double get font15 => screenWidth / 110;

  double get w70 => screenWidth / 22.85;
  double get w80 => screenWidth / 20;

  double get h25 => screenHeight / 30;
  double get h10 => screenWidth / 75;
  double get h20 => screenWidth / 37.5;
  double get h100 => screenHeight / 7.5;
  double get h200 => screenWidth / 3.75;
  double get h50 => screenWidth / 15;
  double get h15 => screenWidth / 50;
  double get h5 => screenWidth / 150;
}

//   static double screenHeight = Get.context!.height;
// static double screenWidth = Get.context!.width;

// static double Pagesize = screenWidth / 2.85;

// static double headingfontsize = screenWidth / 55;
// static double subheadingfontsize = screenWidth / 65;
// static double detailsfontsize = screenWidth / 80;
// static double carddetailsfontsize = screenWidth / 90;
// static double w100 = screenWidth / 4;
// static double w50 = screenWidth / 32;
// static double w40 = screenWidth / 40;
// static double w30 = screenWidth / 53.34;
// static double w20 = screenWidth / 80;
// static double w15 = screenWidth / 106.67;
// static double w10 = screenWidth / 160;
// static double w5 = screenWidth / 320;
// static double w25 = screenWidth / 64;
// static double w18 = screenWidth / 88.88;
// static double w13 = screenWidth / 123.07;
// static double w17 = screenWidth / 94.11;

// static double font20 = screenWidth / 80;
// static double font17 = screenWidth / 94;
// static double font25 = screenWidth / 64;
// static double font13 = screenWidth / 123;
// static double font15 = screenWidth / 106;

// static double w70 = screenWidth / 22.85;
// static double w80 = screenWidth / 20;

// static double h25 = screenHeight / 30;
// static double h10 = screenWidth / 75;
// static double h20 = screenWidth / 37.5;
// static double h100 = screenHeight / 7.5;
// static double h200 = screenWidth / 3.75;
// static double h50 = screenWidth / 15;
// static double h15 = screenWidth / 50;
// static double h5 = screenWidth / 150;

class MobileDimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double Pagesize = screenWidth / 0.72;
  // double getWidth(double value) {
  //   if (screenWidth < 480) {
  //     double ratio = 400 / value;
  //     return screenWidth / ratio;
  //   }
  //   double ratio = 1650 / value;
  //   return screenWidth / ratio;
  // }

  // double getHeight(double value) {
  //   if (screenHeight < 800) {
  //     double ratio = 750 / value;
  //     return screenWidth / ratio;
  //   }
  //   double ratio = 750 / value;
  //   return screenHeight / ratio;
  // }

  static double w100 = screenWidth / 4;
  static double w50 = screenWidth / 8;
  static double w40 = screenWidth / 10;
  static double w30 = screenWidth / 13.34;
  static double w20 = screenWidth / 20;
  static double w15 = screenWidth / 26.67;
  static double w10 = screenWidth / 40;
  static double w5 = screenWidth / 80;
  static double w25 = screenWidth / 16;
  static double w18 = screenWidth / 22.22;
  static double w13 = screenWidth / 30.76;
  static double w17 = screenWidth / 23.52;

  static double font20 = screenWidth / 20;
  static double font17 = screenWidth / 23.52;
  static double font25 = screenWidth / 16;
  static double font13 = screenWidth / 30.76;
  static double font15 = screenWidth / 26.67;

  static double w70 = screenWidth / 5.71;
  static double w80 = screenWidth / 5;

  static double h25 = screenHeight / 30;
  static double h10 = screenWidth / 75;
  static double h20 = screenWidth / 37.5;
  static double h100 = screenHeight / 7.5;
  static double h200 = screenWidth / 3.75;
  static double h50 = screenWidth / 15;
  static double h15 = screenWidth / 50;
  static double h5 = screenWidth / 150;
}
