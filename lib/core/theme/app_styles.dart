import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle size24Weight600green =
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600, color: Colors.green);

  static TextStyle size32Weight700black =
      TextStyle(fontSize: 32.sp, fontWeight: FontWeight.w700, color: Colors.black);
  
  static TextStyle size24Weight500black =
      TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w500, color: Colors.black);

  static TextStyle size18Weight400grey =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400, color: Colors.grey);
}
