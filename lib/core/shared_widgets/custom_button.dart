import 'package:fantasy/core/theme/app_colors.dart';
import 'package:fantasy/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: AppColors.secondryColor),
        child: Center(
            child: Text(
              title,
              style: AppStyles.size32Weight700black.copyWith(fontSize: 24.sp),
            )),
      ),
    );
  }
}
