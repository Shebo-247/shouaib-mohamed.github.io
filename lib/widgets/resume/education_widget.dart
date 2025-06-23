import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:timelines_plus/timelines_plus.dart';

class EducationWidget extends StatefulWidget {
  const EducationWidget({super.key});

  @override
  State<EducationWidget> createState() => _EducationWidgetState();
}

class _EducationWidgetState extends State<EducationWidget> {
  List<Map<String, dynamic>> education = [
    {"title": "Education", "subtitle": "", "date": ""},
    {
      "title": "Beni Suef University",
      "subtitle":
          "Bachelor's Degree in Computer Science and Information Technology",
      "date": "2014 - 2018",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0,
        color: const Color(0xff989898),
        indicatorTheme: const IndicatorThemeData(position: 0, size: 20.0),
        connectorTheme: const ConnectorThemeData(thickness: 1),
      ),
      builder: TimelineTileBuilder.connected(
        connectionDirection: ConnectionDirection.before,
        itemCount: education.length,
        contentsBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  education[index]['title'],
                  style: AppStyles.kTextStyle14SemiBold,
                ),
                10.ph,
                Text(
                  education[index]['subtitle'] ?? "",
                  style: AppStyles.kTextStyle12Light,
                ),
                5.ph,
                Text(
                  education[index]['date'] ?? "",
                  style: AppStyles.kTextStyle12Light.copyWith(
                    color: AppColors.kGreenColor587,
                  ),
                ),
              ],
            ),
          );
        },
        indicatorBuilder: (_, index) {
          return DotIndicator(
            size: 30,
            color: AppColors.kGreenColor587.withValues(alpha: 0.12),
            child: Icon(
              index == 0 ? Icons.school : Icons.circle,
              color: AppColors.kGreenColor587,
              size: index == 0 ? 20 : 15,
            ),
          );
        },
        connectorBuilder:
            (_, index, ___) =>
                SolidLineConnector(color: AppColors.kGreenColor587),
      ),
    );
  }
}
