import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:shouaib_mohamed_portfolio/constants/constants.dart';
import 'package:shouaib_mohamed_portfolio/widgets/blog/blog_widget.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 20.h,
          childAspectRatio: 1.18,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(AppConstants.blogs.length, (index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              duration: const Duration(milliseconds: 400),
              child: ScaleAnimation(
                child: BlogWidget(blog: AppConstants.blogs[index]),
              ),
            );
          }),
        ),
      ),
    );
  }
}
