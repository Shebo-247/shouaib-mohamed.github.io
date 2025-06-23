import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioWidget extends StatefulWidget {
  const PortfolioWidget({super.key, required this.project});

  final Map<String, dynamic> project;

  @override
  State<PortfolioWidget> createState() => _PortfolioWidgetState();
}

class _PortfolioWidgetState extends State<PortfolioWidget> {
  bool isHovered = false;

  void _openProjectUrl() async {
    final url = Uri.parse(widget.project["url"]);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
        webOnlyWindowName: url.path,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onExit: (_) => setState(() => isHovered = false),
      onHover: (_) => setState(() => isHovered = true),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: _openProjectUrl,
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              height: 180.h,
              padding: EdgeInsets.all(isHovered ? 15.w : 30.w),
              width: double.infinity,
              decoration: BoxDecoration(
                color: widget.project["color"],
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(widget.project["image"], height: 100.h),
              ),
            ),
            15.ph,
            Text(widget.project["title"], style: AppStyles.kTextStyle12Regular),
          ],
        ),
      ),
    );
  }
}
