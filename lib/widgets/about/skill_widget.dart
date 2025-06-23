import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/string_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';

class SkillWidget extends StatefulWidget {
  final String icon;
  final String title;
  const SkillWidget({super.key, required this.icon, required this.title});

  @override
  State<SkillWidget> createState() => _SkillWidgetState();
}

class _SkillWidgetState extends State<SkillWidget> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovering = true),
      onExit: (event) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 200.h,
        width: 200.w,
        padding: EdgeInsets.all(isHovering ? 30 : 20),
        decoration: BoxDecoration(
          color: AppColors.kGreenColor587.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: widget.icon.toImage(fit: BoxFit.contain),
      ),
    );
  }
}
