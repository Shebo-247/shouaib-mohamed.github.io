import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/constants/resources.dart';
import 'package:shouaib_mohamed_portfolio/constants/strings.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';

class HomeUserInfoWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeUserInfoWidget({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (constraints.maxWidth < 1400) {
          return Row(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: AppColors.kGreyColorD3E,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20),
                child: Image.asset(Resources.programmer, height: 80, width: 80),
              ),
              20.pw,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.username,
                    style: AppStyles.kTextStyle24SemiBold.copyWith(
                      fontSize: 30.sp,
                    ),
                  ),
                  10.ph,
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kGreyColorD3E,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      AppStrings.jobTitle,
                      style: AppStyles.kTextStyle18Regular,
                    ),
                  ),
                ],
              ),
            ],
          );
        }
        return Column(
          children: [
            Container(
              height: 150.h,
              width: 150.h,
              decoration: BoxDecoration(
                color: AppColors.kGreyColorD3E,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20),
              child: Image.asset(
                Resources.programmer,
                height: 100.h,
                width: 100.h,
              ),
            ),
            20.ph,
            Text(AppStrings.username, style: AppStyles.kTextStyle20SemiBold),
            10.ph,
            Container(
              decoration: BoxDecoration(
                color: AppColors.kGreyColorD3E,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                AppStrings.jobTitle,
                style: AppStyles.kTextStyle14Regular,
              ),
            ),
          ],
        );
      },
    );
  }
}
