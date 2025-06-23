import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hint;
  final TextStyle? hintStyle;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputType? keyboardType;
  final Color? borderColor;
  final Function(String)? onChanged;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.controller,
    this.validator,
    this.hint,
    this.hintStyle,
    this.contentPadding,
    this.keyboardType,
    this.borderColor,
    this.onChanged,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType ?? TextInputType.text,
      maxLines: maxLines,
      style: AppStyles.kTextStyle14Regular,
      decoration: InputDecoration(
        hintText: hint ?? '',
        hintStyle:
            hintStyle ??
            AppStyles.kTextStyle14Regular.copyWith(
              color: AppColors.kGreyColorD6D,
            ),
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: borderColor ?? AppColors.kGreyColorD6D),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(color: borderColor ?? AppColors.kGreyColorD6D),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(
            color: borderColor ?? AppColors.kGreenColor587,
          ),
        ),
      ),
    );
  }
}
