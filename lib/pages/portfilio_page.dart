import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shouaib_mohamed_portfolio/constants/constants.dart';
import 'package:shouaib_mohamed_portfolio/widgets/portfolio/portfolio_widget.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 1.2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(AppConstants.projects.length, (index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 3,
              duration: const Duration(milliseconds: 250),
              child: ScaleAnimation(
                child: PortfolioWidget(project: AppConstants.projects[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
