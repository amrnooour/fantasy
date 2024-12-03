import 'package:fantasy/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? icon;
  final String title;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.title,this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon??const Text(""),
        SizedBox(width: 44.w,),
        Text(
          title,
          style: AppStyles.size32Weight700black.copyWith(fontWeight: FontWeight.w400
          ),
        ),
        const Spacer(),
        const Icon(Icons.search,),
        SizedBox(width: 8.w,),
      ],
    );
    
  }
}
