import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/pages/about_page.dart';
import 'package:shouaib_mohamed_portfolio/pages/blog_page.dart';
import 'package:shouaib_mohamed_portfolio/pages/contact_page.dart';
import 'package:shouaib_mohamed_portfolio/pages/portfilio_page.dart';
import 'package:shouaib_mohamed_portfolio/pages/resume_page.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/widgets/home/header_widget.dart';

class RightSideWidget extends StatefulWidget {
  const RightSideWidget({super.key});

  @override
  State<RightSideWidget> createState() => _RightSideWidgetState();
}

class _RightSideWidgetState extends State<RightSideWidget> {
  int currentIndex = 0;
  List<Widget> pages = [
    AboutPage(),
    ResumePage(),
    PortfolioPage(),
    BlogPage(),
    ContactPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width:
              constraints.maxWidth < 1400
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            color: AppColors.kBlackColorE1F,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.kBlackColor829, width: 2),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: HeaderWidget(
                  onMenuItemSelected: (value) {
                    setState(() => currentIndex = value);
                  },
                ),
              ),
              SliverToBoxAdapter(child: 30.ph),
              SliverToBoxAdapter(child: pages[currentIndex]),
            ],
          ),
        );
      },
    );
  }
}
