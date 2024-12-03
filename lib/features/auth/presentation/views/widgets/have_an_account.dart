import 'package:fantasy/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HaveAnAccount extends StatelessWidget {
  final void Function()? onTap;
  const HaveAnAccount({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text("Already have an account?  "),
      GestureDetector(
        onTap: onTap,
        child: Text("Login here",style: AppStyles.size24Weight600green.copyWith(fontSize: 12.sp),)),
    ],);
  }
}