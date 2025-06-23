import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/constants/resources.dart';
import 'package:shouaib_mohamed_portfolio/constants/strings.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/extensions/string_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';

class HomeContactsWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const HomeContactsWidget({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        if (constraints.maxWidth < 1400) ...{
          Row(
            children: [
              Expanded(
                child: ContactItemWidget(
                  onTap: () {},
                  title: AppStrings.email,
                  subtitle: 'shouaibmoha247@gmail.com',
                  iconPath: Resources.email,
                ),
              ),
              20.pw,
              Expanded(
                child: ContactItemWidget(
                  onTap: () {},
                  title: AppStrings.phone,
                  subtitle: '+201013451336',
                  iconPath: Resources.mobile,
                ),
              ),
            ],
          ),
        } else ...{
          ContactItemWidget(
            onTap: () {},
            title: AppStrings.email,
            subtitle: 'shouaibmoha247@gmail.com',
            iconPath: Resources.email,
          ),
          ContactItemWidget(
            onTap: () {},
            title: AppStrings.phone,
            subtitle: '+201013451336',
            iconPath: Resources.mobile,
          ),
        },

        ContactItemWidget(
          onTap: () {},
          title: AppStrings.address,
          subtitle: 'Gesr El Suez, Cairo, Egypt',
          iconPath: Resources.location,
        ),
      ],
    );
  }
}

class ContactItemWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final String iconPath;
  const ContactItemWidget({
    super.key,
    this.onTap,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
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
            child: iconPath.toSvg(color: AppColors.kGreenColor587, size: 20),
          ),
          10.pw,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toUpperCase(),
                  style: AppStyles.kTextStyle14Medium.copyWith(
                    color: AppColors.kGreyColorB9C,
                    height: 1.5,
                  ),
                ),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.kTextStyle14Regular.copyWith(height: 1.43),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
