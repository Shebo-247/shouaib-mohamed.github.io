import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/extensions/string_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';

class ServiceWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  const ServiceWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.kBlackColor022,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.kGreyColorD3E,
            blurRadius: 1,
            offset: Offset(-2, 0),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon.toImage(height: 50, color: AppColors.kGreenColor587),
          15.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.kTextStyle16SemiBold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                5.ph,
                Expanded(
                  child: Text(
                    subtitle,
                    style: AppStyles.kTextStyle12Light.copyWith(
                      height: 1.4,
                      color: AppColors.kGreyColorD6D,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
