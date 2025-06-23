import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:timelines_plus/timelines_plus.dart';

class ExperienceWidget extends StatefulWidget {
  const ExperienceWidget({super.key});

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  List<Map<String, dynamic>> experience = [
    {"title": "Experience", "subtitle": "", "date": "", "responsibilities": []},
    {
      "title": "Senior Flutter Developer",
      "subtitle": "Engaz AI",
      "workType": "Full-time",
      "date": "May 2022 - Present",
      "responsibilities": [
        "Led the entire mobile development lifecycle for 2 key apps: \nEngaz CRM: A real estate-focused CRM solution serving 50,000+ customers, providing features like lead management, property tracking, and task automation.\nEngaz HR: A human resources platform serving 10,000+ customers across various industries, streamlining attendance, leave, payroll, and employee management.",
        "Architected and developed scalable, maintainable Flutter codebases using MVVM, BLoC, and Clean Architecture.",
        "Managed the CI/CD pipeline using GitHub Actions and Fastlane, overseeing end-to-end deployment to App Store, Google Play, and Huawei App Gallery.",
        "Mentored junior developers through code reviews, pair programming, enhancing team productivity and code quality.",
        "Introduced best practices for code structure, version control, and performance optimization.",
      ],
    },
    {
      "title": "Senior Flutter Developer",
      "subtitle": "Arkan Alkhalej",
      "workType": "Part-time",
      "date": "Jan 2023 - Jan 2025",
      "responsibilities": [
        "Spearheaded the design, development, and deployment of several high-impact cross-platform mobile applications using Flutter, delivering seamless performance across Android and iOS.",
        "Architected clean, scalable, and maintainable codebases using MVVM and clean architecture principles, ensuring long-term project sustainability.",
        "Played a pivotal role in launching multiple production-ready applications that served sectors including e-commerce, on-demand services, logistics, and internal enterprise tools, directly contributing to business growth and digital transformation.",
        "Collaborated closely with product managers, designers, and QA teams in Agile/Scrum workflows to ship features efficiently and meet business objectives.",
      ],
    },
    {
      "title": "Senior Flutter Developer",
      "subtitle": "Googan Solutions",
      "workType": "Freelance",
      "date": "Jan 2021 - Present",
      "responsibilities": [
        "Collaborated with Googan Solutions as a freelance Flutter developer to design and build cross-platform mobile applications tailored to client requirements.",
        "Translated UI/UX designs into highly responsive, pixel-perfect Flutter interfaces with full support for both Android and iOS.",
        "Integrated third-party packages, RESTful APIs, and Firebase services to deliver real-time and secure app functionalities.",
        "Designed and built multiple custom mobile applications from scratch, delivering fully responsive, cross-platform experiences for Android and iOS.",
        "Deployed apps to Google Play Store and Apple App Store, managing release workflows, certificates, and store compliance.",
      ],
    },
    {
      "title": "Flutter Developer",
      "subtitle": "Rowad Modern Technology",
      "workType": "Full-time",
      "date": "Sep 2020 - May 2022",
      "responsibilities": [
        "Delivered end-to-end mobile applications from design to deployment for a wide range of clients across multiple industries, including e-commerce, healthcare, education, and logistics.",
        "Successfully developed and published 10+ mobile apps to the App Store and Google Play, ensuring performance, responsiveness, and adherence to client requirements.",
        "Integrated various third-party services and APIs, including Firebase, Google Maps, payment gateways, and RESTful backends.",
        "Collaborated with cross-functional teams, including designers, backend developers, and project managers, to deliver high-quality products on time and within budget.",
      ],
    },
    {
      "title": "Android Developer",
      "subtitle": "Watanya Company",
      "workType": "Full-time",
      "date": "Jun 2019 - Jun 2020",
      "responsibilities": [
        "Developed and maintained native Android applications using Java and Kotlin.",
        "Debugged and fixed issues.",
        "Optimized code using design patterns.",
        "Worked with Restful APIs.",
      ],
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
        itemCount: experience.length,
        contentsBuilder: (_, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "${experience[index]['title']}",
                      style: AppStyles.kTextStyle16SemiBold,
                    ),
                    if (experience[index]['workType'] != null &&
                        experience[index]['workType'].isNotEmpty) ...{
                      5.pw,
                      Text(
                        "(${experience[index]['workType']})",
                        style: AppStyles.kTextStyle10Light,
                      ),
                    },
                  ],
                ),
                5.ph,
                Row(
                  children: [
                    Text(
                      experience[index]['subtitle'],
                      style: AppStyles.kTextStyle12SemiBold.copyWith(
                        color: AppColors.kGreenColor587,
                      ),
                    ),
                    if (experience[index]['date'].isNotEmpty) ...{
                      5.pw,
                      Text(
                        "| ${experience[index]['date'] ?? ""}",
                        style: AppStyles.kTextStyle12Light.copyWith(
                          color: AppColors.kGreenColor587,
                        ),
                      ),
                    },
                  ],
                ),
                10.ph,
                if (experience[index]['responsibilities'] is List &&
                    experience[index]['responsibilities'].isNotEmpty) ...{
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                        (experience[index]['responsibilities'] as List<String>)
                            .map((responsibility) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 5.h,
                                    margin: EdgeInsets.only(top: 10.h),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  10.pw,
                                  Expanded(
                                    child: Text(
                                      responsibility,
                                      style: AppStyles.kTextStyle12Light,
                                    ),
                                  ),
                                ],
                              );
                            })
                            .toList(),
                  ),
                  30.ph,
                },
              ],
            ),
          );
        },
        indicatorBuilder: (_, index) {
          return DotIndicator(
            size: 30,
            color: AppColors.kGreenColor587.withValues(alpha: 0.12),
            child: Icon(
              index == 0 ? Icons.work : Icons.circle,
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
