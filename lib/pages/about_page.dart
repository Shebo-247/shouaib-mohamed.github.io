import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/constants/constants.dart';
import 'package:shouaib_mohamed_portfolio/constants/strings.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:shouaib_mohamed_portfolio/widgets/about/service_widget.dart';
import 'package:shouaib_mohamed_portfolio/widgets/about/skill_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.aboutDescription,
                style: AppStyles.kTextStyle16Light.copyWith(height: 1.6),
              ),

              50.ph,
              Text(
                AppStrings.whatImDoing,
                style: AppStyles.kTextStyle16SemiBold.copyWith(height: 1.2),
              ),
              20.ph,
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 2 / 0.6,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children:
                    AppConstants.myServices.map((item) {
                      return ServiceWidget(
                        icon: item['icon'],
                        title: item['title'],
                        subtitle: item['subtitle'],
                      );
                    }).toList(),
              ),
              50.ph,
              Text(
                AppStrings.skills,
                style: AppStyles.kTextStyle16SemiBold.copyWith(height: 1.2),
              ),
              20.ph,

              //
              SizedBox(
                height: 200.h,
                child: Scrollbar(
                  interactive: true,
                  scrollbarOrientation: ScrollbarOrientation.bottom,
                  controller: scrollController,
                  child: ListView.separated(
                    controller: scrollController,
                    separatorBuilder: (context, index) => 20.pw,
                    itemCount: AppConstants.mySkills.length,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final item = AppConstants.mySkills[index];
                      return SkillWidget(
                        icon: item['icon'],
                        title: item['title'],
                      );
                    },
                  ),
                ),
              ),
              30.ph,
            ],
          ),
        );
      },
    );
  }
}
