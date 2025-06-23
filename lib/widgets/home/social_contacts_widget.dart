import 'package:flutter/material.dart';
import 'package:shouaib_mohamed_portfolio/constants/resources.dart';
import 'package:shouaib_mohamed_portfolio/extensions/string_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';

class SocialContactsWidget extends StatefulWidget {
  const SocialContactsWidget({super.key});

  @override
  State<SocialContactsWidget> createState() => _SocialContactsWidgetState();
}

class _SocialContactsWidgetState extends State<SocialContactsWidget> {
  bool _isHoveringGoogle = false;
  bool _isHoveringFacebook = false;
  bool _isHoveringGithub = false;
  bool _isHoveringLinkedin = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(hoverColor: Colors.transparent),
          onHover: (value) {
            setState(() => _isHoveringGithub = value);
          },
          icon: Resources.github.toSvg(
            size: 20,
            color: _isHoveringGithub ? Colors.white : AppColors.kGreyColorD6D,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(hoverColor: Colors.transparent),
          onHover: (value) {
            setState(() => _isHoveringLinkedin = value);
          },
          icon: Resources.linkedin.toSvg(
            size: 20,
            color: _isHoveringLinkedin ? Colors.white : AppColors.kGreyColorD6D,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(hoverColor: Colors.transparent),
          onHover: (value) {
            setState(() => _isHoveringGoogle = value);
          },
          icon: Resources.google.toSvg(
            size: 20,
            color: _isHoveringGoogle ? Colors.white : AppColors.kGreyColorD6D,
          ),
        ),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(hoverColor: Colors.transparent),
          onHover: (value) {
            setState(() => _isHoveringFacebook = value);
          },
          icon: Resources.facebook.toSvg(
            size: 20,
            color: _isHoveringFacebook ? Colors.white : AppColors.kGreyColorD6D,
          ),
        ),
      ],
    );
  }
}
