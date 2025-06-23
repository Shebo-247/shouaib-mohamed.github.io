import 'dart:ui';

import 'package:shouaib_mohamed_portfolio/constants/resources.dart';

class AppConstants {
  static const List<String> menuItems = [
    'About',
    'Resume',
    'Portfolio',
    'Blog',
    'Contact',
  ];

  static List<Map<String, dynamic>> myServices = [
    {
      "icon": Resources.mobileDevelopment,
      "title": "Mobile App Development",
      "subtitle":
          "Building high-quality, responsive, and user-friendly mobile applications for both Android and iOS platforms using Flutter and Dart.",
    },
    {
      "icon": Resources.webDevelopment,
      "title": "Web Development",
      "subtitle":
          "Creating dynamic and responsive web applications using the latest technologies and frameworks.",
    },
    {
      "icon": Resources.backendDevelopment,
      "title": "Back End Development",
      "subtitle":
          "Developing robust and scalable back-end systems to support mobile and web applications, ensuring seamless data flow and user experience.",
    },
    {
      "icon": Resources.uiUxDesign,
      "title": "UI/UX Design",
      "subtitle":
          "Designing intuitive and engaging user interfaces that enhance user experience and drive engagement.",
    },
  ];

  static List<Map<String, dynamic>> mySkills = [
    {"icon": Resources.flutter, "title": "Flutter Development"},
    {"icon": Resources.android, "title": "Android Development"},
    {"icon": Resources.dart, "title": "Dart Programming"},
    {"icon": Resources.kotlin, "title": "Kotlin Programming"},
    {"icon": Resources.swift, "title": "Swift Programming"},
    {"icon": Resources.gitHub, "title": "GitHub"},
    {"icon": Resources.githubActions, "title": "GitHub Actions"},
    {"icon": Resources.firebase, "title": "Firebase"},
    {"icon": Resources.postman, "title": "Postman"},
    {"icon": Resources.jira, "title": "Jira"},
  ];

  static List<Map<String, dynamic>> projects = [
    {
      "title": "Engaz CRM",
      "image": Resources.engazCrm,
      "url": "https://play.google.com/store/apps/details?id=com.engaz.engazcrm",
      "color": const Color(0xFF404BFF),
    },
    {
      "title": "Engaz HR",
      "image": Resources.engazHr,
      "url": "https://play.google.com/store/apps/details?id=com.engaz.engazhr",
      "color": const Color(0xFF0A9973),
    },
    {
      "title": "Kian",
      "image": Resources.kian,
      "url": "https://play.google.com/store/apps/details?id=com.app.kian",
      "color": const Color(0xFF5AA0BD),
    },
    {
      "title": "Wanna",
      "image": Resources.wanna,
      "url": "https://play.google.com/store/apps/details?id=com.googan.wanna",
      "color": const Color(0xFFDC6837),
    },
    {
      "title": "Customs Clearance",
      "image": Resources.customsClearance,
      "url":
          "https://play.google.com/store/apps/details?id=com.googan.customs_clearance",
      "color": const Color(0xFFFFFFFF),
    },
    {
      "title": "Fan Alfaisal",
      "image": Resources.fanAlfaisal,
      "url":
          "https://play.google.com/store/apps/details?id=com.googan.fan_alfaisal",
      "color": const Color(0xFF203552),
    },
    {
      "title": "Googan Real Estate",
      "image": Resources.googanRealEstate,
      "url":
          "https://play.google.com/store/apps/details?id=com.googan.googan_real_estate",
      "color": const Color(0xFF022E45),
    },
    {
      "title": "Azka Wild Plants",
      "image": Resources.azkaWildPlants,
      "url":
          "https://play.google.com/store/apps/details?id=com.googan.azka_foods",
      "color": const Color(0xFF00593B),
    },
    {
      "title": "Gift",
      "image": Resources.gift,
      "url": "https://play.google.com/store/apps/details?id=com.gift.gift",
      "color": const Color(0xFF1E506F),
    },
    {
      "title": "Gift Merchant",
      "image": Resources.giftMerchant,
      "url":
          "https://play.google.com/store/apps/details?id=com.gift.gift_merchant",
      "color": const Color(0xFF14587D),
    },
    {
      "title": "Saudi Telecommunications",
      "image": Resources.telecommunication,
      "url":
          "https://play.google.com/store/apps/details?id=com.googan.telecommunication",
      "color": const Color(0xFF0C5094),
    },
    {
      "title": "Snaydi",
      "image": Resources.snaydi,
      "url":
          "https://play.google.com/store/apps/details?id=com.tqnee.sanaydiparent",
      "color": const Color(0xFF006930),
    },
    {
      "title": "Nafethly",
      "image": Resources.nafethly,
      "url": "https://play.google.com/store/apps/details?id=com.sachi.nafethly",
      "color": const Color(0xFF3A3B45),
    },
  ];

  static List<Map<String, dynamic>> blogs = [
    {
      "title": "Flutter State Management Basics (Part 01)",
      "description":
          "Managing state is one of the most important aspects of building robust and scalable Flutter applications. Whether you're creating a simple counter app or a complex production-level project, choosing the right state management approach can make or break your development experience.",
      "image": Resources.stateManagement,
      "url":
          "https://medium.com/@shouaibmoha247/flutter-state-management-basics-part-01-3e2a9102a978",
      "date": "2 min read · Jan 22, 2023",
    },
    {
      "title": "Flutter State Management Basics (Part 02)",
      "description":
          "When building complex Flutter applications, efficiently sharing data across the widget tree becomes crucial. While Flutter offers many state management options today — like Provider, Riverpod, and GetX — at the core of them all lies a foundational concept: InheritedWidget.",
      "image": Resources.stateManagement,
      "url":
          "https://medium.com/@shouaibmoha247/flutter-state-management-basics-part-02-9dd45e69b718",
      "date": "2 min read · Jun 21, 2025",
    },
  ];
}
