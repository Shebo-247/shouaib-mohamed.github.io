import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogWidget extends StatefulWidget {
  const BlogWidget({super.key, required this.blog});

  final Map<String, dynamic> blog;

  @override
  State<BlogWidget> createState() => _BlogWidgetState();
}

class _BlogWidgetState extends State<BlogWidget> {
  bool isHovered = false;

  void _openBlogtUrl() async {
    final url = Uri.parse(widget.blog["url"]);
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
        onTap: _openBlogtUrl,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kBlackColor022,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.kBlackColor829),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  widget.blog["image"],
                  height: 200.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              10.ph,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10.h,
                  children: [
                    Text(
                      widget.blog["date"],
                      style: AppStyles.kTextStyle10Light.copyWith(
                        color: AppColors.kGreyColorD6D,
                      ),
                    ),
                    Text(
                      widget.blog["title"],
                      style: AppStyles.kTextStyle16Bold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      widget.blog["description"],
                      style: AppStyles.kTextStyle10Light.copyWith(
                        color: AppColors.kGreyColorD6D,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
