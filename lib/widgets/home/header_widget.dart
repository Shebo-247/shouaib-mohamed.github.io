import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/constants/constants.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';

class HeaderWidget extends StatefulWidget {
  final Function(int index)? onMenuItemSelected;
  const HeaderWidget({super.key, this.onMenuItemSelected});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  int? hoverIndex;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppConstants.menuItems[currentIndex],
                style: AppStyles.kTextStyle24SemiBold.copyWith(),
              ),
              8.ph,
              Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.kGreenColor587,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.kGreyColor829,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            children:
                AppConstants.menuItems.map((item) {
                  int index = AppConstants.menuItems.indexOf(item);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: InkWell(
                      onTap: () {
                        setState(() => currentIndex = index);
                        if (widget.onMenuItemSelected != null) {
                          widget.onMenuItemSelected!(currentIndex);
                        }
                      },
                      hoverColor: AppColors.kGreyColorD3E,
                      onHover: (value) {
                        setState(() => hoverIndex = value ? index : null);
                      },
                      child: Text(
                        item,
                        style: AppStyles.kTextStyle16SemiBold.copyWith(
                          color:
                              currentIndex == index
                                  ? AppColors.kGreenColor587
                                  : hoverIndex == index
                                  ? AppColors.kGreyColorD6D
                                  : Colors.white,
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
