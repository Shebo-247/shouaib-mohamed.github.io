import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/home_contacts_widget.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/home_user_info_widget.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/social_contacts_widget.dart';

class LeftSideWidget extends StatefulWidget {
  const LeftSideWidget({super.key});

  @override
  State<LeftSideWidget> createState() => _LeftSideWidgetState();
}

class _LeftSideWidgetState extends State<LeftSideWidget> {
  bool showSocialContacts = false;
  bool isHoverButton = false;

  checkScreenSize() {
    final size = MediaQuery.of(context).size;
    setState(() {
      if (size.width > 1400) {
        showSocialContacts = true;
      } else {
        showSocialContacts = false;
      }
    });
  }

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      checkScreenSize();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              curve: Curves.easeInOut,
              width:
                  constraints.maxWidth < 1400
                      ? size.width * 0.7
                      : size.width * 0.15,
              decoration: BoxDecoration(
                color: AppColors.kBlackColorE1F,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: AppColors.kBlackColor829, width: 2),
              ),
              padding: EdgeInsets.only(
                top: constraints.maxWidth > 1400 ? 50 : 20,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              child: Column(
                children: [
                  HomeUserInfoWidget(constraints: constraints),
                  Visibility(
                    visible: showSocialContacts,
                    child: Column(
                      children: [
                        Divider(
                          color: AppColors.kBlackColor829,
                          thickness: 1.5,
                          height: 50,
                        ),
                        HomeContactsWidget(constraints: constraints),
                        30.ph,
                        SocialContactsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (constraints.maxWidth < 1400)
              Positioned(
                right: 0,
                child: MouseRegion(
                  onHover: (_) => setState(() => isHoverButton = true),
                  onExit: (_) => setState(() => isHoverButton = false),
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showSocialContacts = !showSocialContacts;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.w,
                        vertical: 15.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.kGreyColorD3E,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.kBlackColor829.withValues(
                              alpha: 0.5,
                            ),
                            blurRadius: 5,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        gradient:
                            isHoverButton
                                ? LinearGradient(
                                  colors: [
                                    AppColors.kGreenColor587,
                                    AppColors.kGreenColor587.withValues(
                                      alpha: 0.2,
                                    ),
                                  ],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                )
                                : null,
                      ),
                      child: Text(
                        'Show Contacts',
                        style: AppStyles.kTextStyle16Regular,
                      ),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
